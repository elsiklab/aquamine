<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>

<html:xhtml />

    <link type="text/css" rel="stylesheet" href="jstree/dist/themes/default/style.min.css"/>
    <script type="text/javascript" src="jstree/dist/jstree.min.js"></script>
    <style>
	div#content-wrap {margin: 10px 20px 10px 20px; min-height: 500px;}
	.category {font-weight: bold;}
        span.other-categories {font-weight: normal;}
	.organism {font-style: italic; font-weight: normal;}
        div#jstree_ortho { font-size: 14px; }
	#rbh-table { width:100%; }
	#rbh-table th, #rbh-table td {font-size: 14px; padding: 5px;}
    </style>
    <script type="text/javascript">
	jQuery(document).ready(function() { 
		jQuery('#jstree_ortho').jstree({
            		"core" : {
                		"themes" : {
                	   	 	"dots"  : false,
        	           	 	"icons" : false
	                	},

            		},
	                "plugins" : ["conditionalselect"],
                	"conditionalselect" : function (node, event) {
        	        	return (node.children.length > 0);
	    		},
        	});
        	jQuery('#jstree_ortho').bind("ready.jstree", function (event, data) {
        		jQuery("#jstree_ortho").jstree("open_all");
        	});
         	jQuery('#jstree_ortho').on("changed.jstree", function (event, data) {
         		if (data.node !== undefined) {
               			jQuery('#jstree_ortho').jstree("open_node", jQuery('#' + data.node.id));
           		}
           	});
	});
    </script>

<div id="content-wrap">

<!-- INSERT CONTENT HERE -->

<h3>Taxonomy Tree for the AquaMine-Ortho Dataset</h3><br>

<p>All AquaMine species are shown in the taxonomic tree below, which is based on information from the NCBI taxonomy database. The taxon names shown in bold are the last common ancestral groups that can be selected when querying the AquaMine-Ortho dataset.</p>

<p>&nbsp;</p>

	<div id="jstree_ortho">
		<ul id="tree-root">
			<li id="deuterostomia" class="category">
				Deuterostomia
				<ul id="deuterostomia-children">
					<li id="actinopterygii" class="category">
						Actinopterygii <span class="other-categories">(also Actinopteri; Neopterygii; Teleostei; Osteoglossocephalai; Clupeocephala)</span>
						<ul id="actinopterygii-children">
							<li id="euteleosteomorpha" class="category">
								Euteleosteomorpha
								<ul id="euteleosteomorpha-children">
									<li id="neoteleostei" class="category">
										Neoteleostei <span class="other-categories">(also Eurypterygia; Ctenosquamata; Acanthomorphata; Euacanthomorphacea; Percomorphaceae)</span>
										<ul id="neoteleostei-children">
											<li id="carangaria" class="category">
												Carangaria
												<ul id="carangaria-children">
													<li id="seriola-dumerili" class="organism">
														Seriola dumerili
													</li>
													<li id="seriola-lalandi-dorsalis" class="organism">
														Seriola lalandi dorsalis
													</li>
													<li id="hippoglossus-hippoglossus" class="organism">
														Hippoglossus hippoglossus
													</li>
													<li id="xiphias-gladius" class="organism">
														Xiphias gladius
													</li>
												</ul>
											</li>
											<li id="eupercaria" class="category">
												Eupercaria
												<ul id="eupercaria-children">
													<li id="gasterosteus-aculeatus-aculeatus" class="organism">
														Gasterosteus aculeatus aculeatus
													</li>
													<li id="perca-flavescens" class="organism">
														Perca flavescens
													</li>
													<li id="gadus-morhua" class="organism">
														Gadus morhua
													</li>
													<li id="micropterus-salmoides" class="organism">
														Micropterus salmoides
													</li>
													<li id="morone-saxatilis" class="organism">
														Morone saxatilis
													</li>
													<li id="oreochromis-niloticus" class="organism">
														Oreochromis niloticus
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li id="protacanthopterygii" class="category">
										Protacanthopterygii
										<ul id="protacanthopterygii-children">
											<li id="salmoninae" class="category">
												Salmoninae <span class="other-categories">(which is within Salmoniformes; Salmonidae)</span>
												<ul id="salmoninae-children">
													<li id="oncorhynchus-kisutch" class="organism">
														Oncorhynchus kisutch
													</li>
													<li id="oncorhynchus-mykiss" class="organism">
														Oncorhynchus mykiss
													</li>
													<li id="oncorhynchus-nerka" class="organism">
														Oncorhynchus nerka
													</li>
													<li id="oncorhynchus-tshawytscha" class="organism">
														Oncorhynchus tshawytscha
													</li>
													<li id="salmo-salar" class="organism">
														Salmo salar
													</li>
													<li id="salvelinus-alpinus" class="organism">
														Salvelinus alpinus
													</li>
												</ul>
											</li>
											<li id="esox-lucius" class="organism">
												Esox lucius
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li id="otomorpha" class="category">
								Otomorpha
								<ul id="otomorpha-children">
									<li id="astyanax-mexicanus" class="organism">
										Astyanax mexicanus
									</li>
									<li id="danio-rerio" class="organism">
										Danio rerio
									</li>
									<li id="ictalurus-punctatus" class="organism">
										Ictalurus punctatus
									</li>
									<li id="clupea-harengus" class="organism">
										Clupea harengus
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li id="homo-sapiens" class="organism">
						Homo sapiens
					</li>
				</ul>
			</li>
			<li id="protostomia" class="category">
				Protostomia
				<ul id="protostomia-children">
					<li id="arthropoda" class="category">
						Arthropoda <span class="other-categories">(also Mandibulata; Pancrustacea)</span>
						<ul id="arthropoda-children">
							<li id="homarus-americanus" class="organism">
								Homarus americanus
							</li>
							<li id="penaeus-monodon" class="organism">
								Penaeus monodon
							</li>
								<li id="penaeus-vannamei" class="organism">
								Penaeus vannamei
							</li>
							<li id="drosophila-melanogaster" class="organism">
								Drosophila melanogaster
							</li>
						</ul>
					</li>
					<li id="mollusca" class="category">
						Mollusca
						<ul id="mollusca-children">
							<li id="crassostrea-gigas" class="organism">
								Crassostrea gigas
							</li>
							<li id="crassostrea-virginica" class="organism">
								Crassostrea virginica
							</li>
							<li id="mercenaria-mercenaria" class="organism">
								Mercenaria mercenaria
							</li>
							<li id="lottia-gigantea" class="organism">
								Lottia gigantea
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>

    <br>
	<h3>Reciprocal Best Hit pairs in the AquaMine-RBH dataset</h3><br>
	<p>Model organisms or well-annotated species were compared to other members of a relevant taxonomic group with a similar evolutionary history of whole genome duplication to compute reciprocal best hits (RBH), which infer one-to-one orthology. Homo sapiens RBH were computed for the Protostomia and Lepisosteus oculatus, but not for Teleostei due to an extra whole genome duplication event in Teleostei compared to mammals. Salmonids were not compared to other Teleostei due an extra whole genome duplication event in the Salmonids compared to the other Teleostei.</p><br>

	<table id="rbh-table" cellspacing=0 cellpadding=0 cellborder=0 border=1>
		<thead>
			<tr>
				<th><strong>Model Organism or Well Annotated Species</strong></th>
				<th><strong>Comparison Species</strong></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="organism">Danio rerio</td>
				<td>Other Teleostei except Salmonids</td>
			</tr>
			<tr>
				<td class="organism">Drosophila melanogaster</td>
				<td>Other Arthropods</td>
			</tr>
			<tr>
				<td class="organism">Homo sapiens</td>
				<td>Protostomia and Lepisosteus oculatus</td>
			</tr>
			<tr>
				<td class="organism">Lottia gigantea</td>
				<td>Other Mollusks</td>
			</tr>
			<tr>
				<td class="organism">Oncorhynchus kisutch</td>
				<td>Other Salmonids</td>
			</tr>
			<tr>
				<td class="organism">Oncorhynchus mykiss</td>
				<td>Other Salmonids</td>
			</tr>
			<tr>
				<td class="organism">Oreochromis niloticus</td>
				<td>Other Neoteleostei</td>
			</tr>
			<tr>
				<td class="organism">Salmo salar</td>
				<td>Other Salmonids</td>
			</tr>
		</tbody>
	</table>

</div>
