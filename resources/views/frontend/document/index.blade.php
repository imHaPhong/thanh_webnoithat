@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/document.css');echo $style;?>
    </style>
@stop
@section('content')
    <div id="content-slide">
        <div class="spinner">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
        </div>
    </div>
    <div class="container">
        <div class="documents">
            <div class="list">
                @for ($i = 1 ; $i <= 20 ; $i ++)
                <div class="item">
                    <div class="box">
                        <a href="{{ route('get.document.detail') }}" class="image">
                            <img src="{{ asset('images/document.jpg') }}" alt="">
                        </a>
                        <h4>
                            <a href=""></a>
                        </h4>
                        <a href="" class="auth"></a>
                        <p class="footer">
                            <a href=""><i class="fa fa-file-text-o"></i> </a>
                            <a href=""><i class="fa fa-eye"></i> </a>
                            <a href=""><i class="fa fa-download"></i> </a>
                        </p>
                    </div>
                </div>
                @endfor
            </div>
        </div>
    </div>
    <div class="container">
        <div class="documents-categories">
            <div class="list">
                @for ($i = 1 ; $i <= 4 ; $i ++)
                    <div class="col-3">
                        <div class="box">
                            <h3></h3>
                            @for ($j = 1 ; $j <= 8 ; $j ++)
                                <div class="item">
                                    <h4>
                                        <a href="{{ route('get.document.detail') }}">
                                            <img src="{{ asset('images/icon/word.png') }}" alt="">
                                            
                                        </a>
                                    </h4>
                                    <p class="footer">
                                        <a href=""><i class="fa fa-file-text-o"></i> </a>
                                        <a href=""><i class="fa fa-eye"></i> </a>
                                        <a href=""><i class="fa fa-download"></i></a>
                                    </p>
                                </div>
                            @endfor
                        </div>
                    </div>
                @endfor
            </div>
        </div>
    </div>
@stop
@section('script')

    <script type="text/javascript">
        var routeRenderSlide  = '{{ route('ajax_get.slide') }}'; 
        <?php $js = file_get_contents('js/document.js');echo $js;?>
    </script>
@stop
