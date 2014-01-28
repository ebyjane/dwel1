<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - Post a Free Ad';
$this->breadcrumbs=array(
	'Post a Ad',
);
?>

	<div class="span12">
    	<div class="large-8 small-12 columns content-wrap">
        	<div class="content-part contact-us post-ads">
            <h1>Post your free ad</h1>
            	<form action="" method="">
                	<ul>
                    	<li><label>Category</label>
                        	<select>
                            	<option>Mobile &amp; tablets</option>
                                <option>Computers and Accessories</option>
                                <option>Electronics Items & Technology</option>
                                <option>Vehicles</option>
                                <option>Real Estate</option>
                            </select>
                        </li>
                        <li><label>Type of ad</label>
                        	<input type="radio" /> Seller
                            <input type="radio" /> Buyer
                        </li>
                        <li><label>Country</label>
                        	<input type="text" />
                        </li>
                        <li><label>City</label>
                        	<input type="text" />
                        </li>
                        <li><label>Your Locality</label>
                        	<input type="text" />
                        </li>
                        <li><label>Title of the Ad</label>
                        	<input type="text" />
                        </li>
                        <li>
                        	<label>Condtion</label>
                            <input type="radio" /> Used
                            <input type="radio" /> New
                        </li>
                        <li>
                        	<label>Photos for your ad</label>
                        	<input type="button" value="Add Photo" />
                        </li>
                        <li>
                        	<label>Price</label>
                            <input type="text" />
                        </li>
                        <li>
                        	<label>Description</label>
                            <textarea></textarea>
                        </li>
                    </ul>
                    
                    <h3>User Information</h3>
                    <ul>
                    	<li><label>You are</label>
                        	<input type="radio" /> Individual
                            <input type="radio" /> Dealer
                        </li>
                        <li><label>Name</label>
                        	<input type="text" />
                        </li>
                        <li><label>Email ID</label>
                        	<input type="text" />
                        </li>
                        <li><label>Mobile No.</label>
                        	<input type="text" />
                        </li>
                    </ul>
                    <div class="btn-holder">
                    	By clicking "Post", you agree to our Terms of Use & Privacy Policy.<br />
                        <input type="submit" value="Post" />
                    </div>
                </form>
            </div>
        </div>
    </div>