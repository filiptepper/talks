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
    <meta name="viewport" content="width=100, user-scalable=no">

    <title>Presentation Controller</title>

    <style>
    button {
      display: block;
      margin: 10px auto;
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