<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="initial-scale=1.0">
	    <meta charset="UTF-8" />
	    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
	    <?php $asset=Yii::app()->assetManager->publish(YiiBase::getPathOfAlias('webroot.themes.default.assets')); ?>
	    <?php Yii::app()->clientScript->registerMetaTag('text/html; charset=UTF-8', 'Content-Type', 'Content-Type', array(), 'Content-Type')
                                      ->registerMetaTag($this->keywords, 'keywords', 'keywords', array(), 'keywords')
                                      ->registerMetaTag(strip_tags($this->params['data']['extract']), 'description', 'description', array(), 'description')
                                      ->registerCssFile($asset .'/css/main.css')
		                              ->registerCoreScript('jquery')
								      ->registerScriptFile($asset .'/js/script.js'); ?>

<?php									  
/*Yii::app()->clientScript->registerCssFile($asset.'/css/normalize.css');									  
Yii::app()->clientScript->registerCssFile($asset.'/css/foundation.css');		
Yii::app()->clientScript->registerCssFile($asset.'/css/main_dweling.css');		
Yii::app()->clientScript->registerCssFile($asset.'/css/form.css');		
Yii::app()->clientScript->registerCssFile($asset.'/css/colorbox.css');		*/
?>
				  
									  
		<!--[if lt IE 9]>
            <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
	</head>
	<body>
    <header>
        <div class="row">
            <div class="large-12 small-12 columns social_wrap">
            	<ul>
                	<li><a href="#" class="facebook" title="Facebook">Facebook</a></li>
                    <li><a href="#" class="twitter" title="Twitter">Twitter</a></li>
                    <li><a href="#" class="linkedin" title="Linkedin">Linkedin</a></li>
                    <li class="last"><a href="#" class="gplus" title="Googleplus">Googleplus</a></li>            
                </ul>
            </div>
        </div>
        <!-- ***** header row ends here ********** -->   
    </header>	
		<header>
		    <div class="header-top-bar"></div>

		    <div class="row-fluid header-middle-bar">
			    	<?php $this->widget('bootstrap.widgets.TbNavbar', array(
						'brand' => Yii::app()->name,
						'fixed' => false,
						'items' => array(
							array(
								'class' => 'bootstrap.widgets.TbMenu',
								'items' => $this->getCiiMenu()
							)
						)
					)); ?>			      
					<ul class="row login-wrap clearfix">
                	<li class="login">
					<?php $this->widget('zii.widgets.CMenu',array(
					'items'=>array(
					array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
					),
					));
					if(Yii::app()->user->isGuest){
					?>

					<a href="<?php echo Yii::app()->request->baseUrl; ?>/site/login" class="iframe">Login</a> |</li>
                    <li class="signup"><a href="<?php echo Yii::app()->request->baseUrl; ?>/site/register" class="iframe">Signup</a></li><?php }?>
                </ul>
					
		    </div>		    
		</header>
		
		<main class="main">

		   	<div class="container main-container">
                <div class="row-fluid main-body">
                    <?php echo $content; ?>
                </div>
            </div>
		</main>
		
		<footer>
		    <div class="footer-top-block">
		        <div class="container"></div>
		    </div>
		    <div class="footer-main-block">
		        <div class="row-fluid">
		            <div class="inner-container">
                        <div class="span3 well" id="eChrip">
                            <?php $this->widget('ext.echirp.EChirp', array('options' => array('user' => Cii::getConfig('twitter_username')))); ?>
                        </div>
		                <div class="span3">
                            <h5>Categories</h5>
                            <?php $this->widget('bootstrap.widgets.TbMenu', array(
                                'items' => $this->getCategories()
                            )); ?>
                        </div>
                        <div class="span3">
                            <h5>Recent Posts</h5>
                            <?php $this->widget('bootstrap.widgets.TbMenu', array(
                                'items' => $this->getRecentPosts()
                            )); ?>
                        </div>
                        <div class="span3">
                            <h5>Search</h5>
                            <p>Looking for something on the blog?</p>
                            <?php echo CHtml::beginForm($this->createUrl('/search'), 'get', array('id' => 'search')); ?>
                                <div class="input-append">
                                    <?php echo CHtml::textField('q', Cii::get($_GET, 'q', ''), array('type' => 'text', 'style' => 'width: 75%', 'placeholder' => 'Search...')); ?>
                                </div>
                            <?php echo CHtml::endForm(); ?>
                        </div>
		            </div>
		        </div>
		    </div>
		    <div class="footer-bottom-block">
		        <div class="container">
                        <div class="pull-left">Copyright &copy <?php echo date('Y'); ?> <?php echo Yii::app()->name; ?></div>
                        <div class="pull-right cii-menu"><?php $this->widget('cii.widgets.CiiMenu', array('items' => $this->getCiiMenu(), 'htmlOptions' => array('class' => 'footer-nav'))); ?></div>
		        </div>
		    </div>
		</footer>
		
		<?php if (!YII_DEBUG):
			if (Cii::getConfig('piwikId') !== NULL):
				$this->widget('ext.analytics.EPiwikAnalyticsWidget', 
					array(
						'id' 		=> Cii::getConfig('piwikId'),
						'baseUrl' 	=> Cii::getConfig('piwikBaseUrl')
					)
				); 
			endif;
			
			if (Cii::getConfig('gaAccount') !== NULL):
				$this->widget('ext.analytics.EGoogleAnalyticsWidget', 
					array(
						'account'=>Cii::getConfig('gaAccount'), 
						'addThis'=>Cii::getConfig('gaAddThis'), 
						'addThisSocial'=>Cii::getConfig('gaAddThisSocial'),
					)
				);
			endif; 
		endif; ?>
	</body>
</html>
<script>
 /* document.write('<script src=' +
  ('__proto__' in {} ? '<?php echo Yii::app()->request->baseUrl; ?>/js/vendor/zepto' : 'js/vendor/jquery') +
  '.js><\/script>')*/
  </script>
  
  <?php
  /*Yii::app()->clientScript->registerCssFile($asset.'/js/foundation.min.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.alerts.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.clearing.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.cookie.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.dropdown.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.forms.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.joyride.js'); 
  
  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.magellan.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.orbit.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.placeholder.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.reveal.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.section.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.tooltips.js'); 

  Yii::app()->clientScript->registerCssFile($asset.'/js/foundation/foundation.topbar.js'); */
    
  
?>  
  <script>
    /*$(document).foundation();
	$(".iframe").colorbox({iframe:true, width:"60%", height:"67%"});*/
  </script>
