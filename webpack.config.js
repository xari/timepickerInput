var path = require('path');

module.exports = {
    mode: 'development',
    entry: path.join(__dirname, 'srcjs', 'timepicker.jsx'),
    output: {
        path: path.join(__dirname, 'inst', 'www', '${package}', 'timepicker'),
        path: path.join(__dirname, 'inst/www/timepickerInput/timepicker'),
        filename: 'timepicker.js'
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            },
	    {
                test: /\.css$/i,
                use: ['style-loader', 'css-loader'],
            }
        ]
    },
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    stats: {
        colors: true
    },
    devtool: 'source-map'
};
