require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  erb :index
end

__END__

@@ index
<!doctype html>
<html lang="en">
  <head>
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <title>Presentation Controller</title>

    <style>
    html, body {
      height: 100%;
    }

    body {
      margin: 0;
      padding: 0;
    }

    button {
      background-color: #eeeeee;
      border: 1px solid #eeeeee;
      display: block;
      font-size: 10em;
      margin: 0 auto;
      width: 90%;
    }

    #next {
      height: 65%;
    }

    #previous {
      height: 30%;
      margin-top: 5%;
    }
    </style>
  </head>

  <body>
    <button id="next">Next</button>
    <button id="previous">Previous</button>

    <script type="text/javascript">
    var script = '<script type="text/javascript" src="' + window.location.href.replace('4568', '4569') + '/client.js"></sc' + 'ript>';
    document.write(script);
    </script>
    <script type="text/javascript">
    var client = new Faye.Client(window.location.href.replace('4568', '4569'));

    document.getElementById('next').onclick = function() {
      client.publish('/controller', 'next');
    }

    document.getElementById('previous').onclick = function() {
      client.publish('/controller', 'previous');
    }
    </script>
  </body>
</html>