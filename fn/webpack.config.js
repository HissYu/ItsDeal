const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const VueLoaderPlugin = require('vue-loader/lib/plugin')

const config = {
    devtool:"eval-source-map",
    entry:__dirname+"/src/main.js",
    output:{
        path:__dirname+"/dist",
        filename:"bundle.js"
    },
    resolve:{extensions:[".js",".json",".css",".vue"]},

    module:{
        rules:[
            {
                test: /\.js$/,
                use:{
                    loader:"babel-loader"
                },
                exclude: /(node_modules|bower_components)/
            },
            {test:/\.vue$/,use:{loader:"vue-loader"}},
            {test:/\.css$/,use: [{loader:"style-loader"},{loader:"css-loader"}]},
            {test:/\.less$/,use:[{loader:"style-loader"},{loader:"css-loader"},{loader:"less-loader"}]},
            {test:/\.scss$/,use:[{loader:"style-loader"},{loader:"css-loader"},{loader:"sass-loader"}]},
            {
                test:/\.(png|jpe?g|gif|svg)(\?.*)?$/,
                use:{
                    loader:"url-loader",
                    options:{
                        limit:10000,
                        name:"assets/images/[name].[hash:7].[ext]"
                    }
                }
            },
            {
                test: /\.(eot|woff|woff2|ttf)$/,
                loader: 'file-loader',
                options: {
                  name: '[name].[ext]?[hash]'
                }
            },
        ]
    },
    plugins:[
        new HtmlWebpackPlugin({template:'./src/index.html'}),
        new webpack.HotModuleReplacementPlugin(),
        new VueLoaderPlugin()
    ],
    devServer:{
        historyApiFallback:true,
        inline:true,
        hot:true,
        open:true,
        overlay:true
    }
}

module.exports=config;