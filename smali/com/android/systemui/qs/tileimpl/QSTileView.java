public class com.android.systemui.qs.tileimpl.QSTileView extends com.android.systemui.qs.tileimpl.QSTileBaseView {
	 /* .source "QSTileView.java" */
	 /* # instance fields */
	 protected android.content.res.ColorStateList mColorLabelActive;
	 protected android.content.res.ColorStateList mColorLabelInactive;
	 private android.content.res.ColorStateList mColorLabelUnavailable;
	 private android.view.View mDivider;
	 protected Boolean mDualTargetAllowed;
	 private android.view.View mExpandIndicator;
	 private android.view.View mExpandSpace;
	 protected android.widget.TextView mLabel;
	 protected android.view.ViewGroup mLabelContainer;
	 protected Integer mMaxLabelLines;
	 private android.widget.ImageView mPadLock;
	 protected android.widget.TextView mSecondLine;
	 private Integer mState;
	 /* # direct methods */
	 public static void $r8$lambda$SkUsG5Xkrs0bwHWEv5nasOIxDVE ( com.android.systemui.qs.tileimpl.QSTileView p0, Boolean p1 ) { //synthethic
		 /* .locals 0 */
		 /* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->lambda$setShowLabels$0(Z)V */
		 return;
	 } // .end method
	 public com.android.systemui.qs.tileimpl.QSTileView ( ) {
		 /* .locals 1 */
		 int v0 = 0; // const/4 v0, 0x0
		 /* .line 54 */
		 /* invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V */
		 return;
	 } // .end method
	 public com.android.systemui.qs.tileimpl.QSTileView ( ) {
		 /* .locals 0 */
		 /* .line 58 */
		 /* invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V */
		 int p1 = 2; // const/4 p1, 0x2
		 /* .line 39 */
		 /* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I */
		 int p1 = 0; // const/4 p1, 0x0
		 /* .line 51 */
		 /* iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z */
		 /* .line 60 */
		 (( android.widget.LinearLayout ) p0 ).setClipChildren ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V
		 /* .line 61 */
		 (( android.widget.LinearLayout ) p0 ).setClipToPadding ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V
		 int p1 = 1; // const/4 p1, 0x1
		 /* .line 63 */
		 (( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).setClickable ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V
		 /* .line 64 */
		 p2 = 		 android.view.View .generateViewId ( );
		 (( android.widget.LinearLayout ) p0 ).setId ( p2 ); // invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setId(I)V
		 /* .line 65 */
		 (( com.android.systemui.qs.tileimpl.QSTileView ) p0 ).createLabel ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V
		 /* .line 66 */
		 (( android.widget.LinearLayout ) p0 ).setOrientation ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V
		 /* const/16 p1, 0x31 */
		 /* .line 67 */
		 (( android.widget.LinearLayout ) p0 ).setGravity ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V
		 /* .line 68 */
		 (( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
		 /* const p2, 0x1010036 */
		 com.android.settingslib.Utils .getColorAttr ( p1,p2 );
		 this.mColorLabelActive = p1;
		 /* .line 69 */
		 this.mColorLabelInactive = p1;
		 /* .line 72 */
		 (( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
		 /* const p2, 0x1010038 */
		 com.android.settingslib.Utils .getColorAttr ( p1,p2 );
		 this.mColorLabelUnavailable = p1;
		 return;
	 } // .end method
	 private void lambda$setShowLabels$0 ( Boolean p0 ) { //synthethic
		 /* .locals 0 */
		 /* .line 177 */
		 p0 = this.mLabelContainer;
		 if ( p1 != null) { // if-eqz p1, :cond_0
			 int p1 = 0; // const/4 p1, 0x0
		 } // :cond_0
		 /* const/16 p1, 0x8 */
	 } // :goto_0
	 (( android.view.ViewGroup ) p0 ).setVisibility ( p1 ); // invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V
	 return;
} // .end method
/* # virtual methods */
protected void createLabel ( ) {
	 /* .locals 3 */
	 /* .line 93 */
	 (( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
	 android.view.LayoutInflater .from ( v0 );
	 int v2 = 0; // const/4 v2, 0x0
	 /* .line 94 */
	 (( android.view.LayoutInflater ) v0 ).inflate ( v1, p0, v2 ); // invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
	 /* check-cast v0, Landroid/view/ViewGroup; */
	 this.mLabelContainer = v0;
	 /* .line 95 */
	 (( android.view.ViewGroup ) v0 ).setClipChildren ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V
	 /* .line 96 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).setClipToPadding ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
	 /* .line 97 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 /* check-cast v0, Landroid/widget/TextView; */
	 this.mLabel = v0;
	 /* .line 98 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 /* check-cast v0, Landroid/widget/ImageView; */
	 this.mPadLock = v0;
	 /* .line 99 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 this.mDivider = v0;
	 /* .line 100 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 this.mExpandIndicator = v0;
	 /* .line 101 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 this.mExpandSpace = v0;
	 /* .line 102 */
	 v0 = this.mLabelContainer;
	 (( android.view.ViewGroup ) v0 ).findViewById ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
	 /* check-cast v0, Landroid/widget/TextView; */
	 this.mSecondLine = v0;
	 /* .line 103 */
	 v0 = this.mLabelContainer;
	 (( android.widget.LinearLayout ) p0 ).addView ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
	 return;
} // .end method
public Integer getDetailY ( ) {
	 /* .locals 2 */
	 /* .line 89 */
	 v0 = 	 (( android.widget.LinearLayout ) p0 ).getTop ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I
	 v1 = this.mLabelContainer;
	 v1 = 	 (( android.view.ViewGroup ) v1 ).getTop ( ); // invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I
	 /* add-int/2addr v0, v1 */
	 p0 = this.mLabelContainer;
	 p0 = 	 (( android.view.ViewGroup ) p0 ).getHeight ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I
	 /* div-int/lit8 p0, p0, 0x2 */
	 /* add-int/2addr v0, p0 */
} // .end method
protected void handleExpand ( Boolean p0 ) {
	 /* .locals 4 */
	 /* .line 161 */
	 v0 = this.mExpandIndicator;
	 int v1 = 0; // const/4 v1, 0x0
	 /* const/16 v2, 0x8 */
	 if ( p1 != null) { // if-eqz p1, :cond_0
		 /* move v3, v1 */
	 } // :cond_0
	 /* move v3, v2 */
} // :goto_0
(( android.view.View ) v0 ).setVisibility ( v3 ); // invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
/* .line 162 */
p0 = this.mExpandSpace;
if ( p1 != null) { // if-eqz p1, :cond_1
} // :cond_1
/* move v1, v2 */
} // :goto_1
(( android.view.View ) p0 ).setVisibility ( v1 ); // invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V
return;
} // .end method
protected void handleStateChanged ( com.android.systemui.plugins.qs.QSTile$State p0 ) {
/* .locals 7 */
/* .line 128 */
/* invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V */
/* .line 129 */
v0 = this.mLabel;
(( android.widget.TextView ) v0 ).getText ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
v1 = this.label;
v0 = java.util.Objects .equals ( v0,v1 );
int v1 = 1; // const/4 v1, 0x1
if ( v0 != null) { // if-eqz v0, :cond_0
/* iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I */
/* iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
/* if-eq v0, v2, :cond_3 */
/* .line 131 */
} // :cond_0
/* iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
int v2 = 2; // const/4 v2, 0x2
/* if-ne v0, v2, :cond_1 */
/* .line 132 */
v0 = this.mColorLabelActive;
} // :cond_1
/* if-ne v0, v1, :cond_2 */
/* .line 134 */
v0 = this.mColorLabelInactive;
/* .line 136 */
} // :cond_2
v0 = this.mColorLabelUnavailable;
/* .line 138 */
} // :goto_0
v2 = this.mLabel;
(( android.widget.TextView ) v2 ).setTextColor ( v0 ); // invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
/* .line 139 */
/* iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I */
/* .line 140 */
v0 = this.mLabel;
v2 = this.label;
(( android.widget.TextView ) v0 ).setText ( v2 ); // invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
/* .line 142 */
} // :cond_3
v0 = this.mSecondLine;
(( android.widget.TextView ) v0 ).getText ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
v2 = this.secondaryLabel;
v0 = java.util.Objects .equals ( v0,v2 );
/* const/16 v2, 0x8 */
int v3 = 0; // const/4 v3, 0x0
/* if-nez v0, :cond_5 */
/* .line 143 */
v0 = this.mSecondLine;
v4 = this.secondaryLabel;
(( android.widget.TextView ) v0 ).setText ( v4 ); // invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
/* .line 144 */
v0 = this.mSecondLine;
v4 = this.secondaryLabel;
v4 = android.text.TextUtils .isEmpty ( v4 );
if ( v4 != null) { // if-eqz v4, :cond_4
/* move v4, v2 */
} // :cond_4
/* move v4, v3 */
} // :goto_1
(( android.widget.TextView ) v0 ).setVisibility ( v4 ); // invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
/* .line 147 */
} // :cond_5
/* iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z */
if ( v0 != null) { // if-eqz v0, :cond_6
/* iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z */
if ( v0 != null) { // if-eqz v0, :cond_6
/* move v0, v1 */
} // :cond_6
/* move v0, v3 */
/* .line 148 */
} // :goto_2
(( com.android.systemui.qs.tileimpl.QSTileView ) p0 ).handleExpand ( v0 ); // invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleExpand(Z)V
/* .line 149 */
v4 = this.mLabelContainer;
int v5 = 0; // const/4 v5, 0x0
if ( v0 != null) { // if-eqz v0, :cond_7
v6 = this.dualLabelContentDescription;
} // :cond_7
/* move-object v6, v5 */
} // :goto_3
(( android.view.ViewGroup ) v4 ).setContentDescription ( v6 ); // invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V
/* .line 151 */
v4 = this.mLabelContainer;
v4 = (( android.view.ViewGroup ) v4 ).isClickable ( ); // invoke-virtual {v4}, Landroid/view/ViewGroup;->isClickable()Z
/* if-eq v0, v4, :cond_9 */
/* .line 152 */
v4 = this.mLabelContainer;
(( android.view.ViewGroup ) v4 ).setClickable ( v0 ); // invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setClickable(Z)V
/* .line 153 */
v4 = this.mLabelContainer;
(( android.view.ViewGroup ) v4 ).setLongClickable ( v0 ); // invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V
/* .line 154 */
v4 = this.mLabelContainer;
if ( v0 != null) { // if-eqz v0, :cond_8
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).newTileBackground ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;
} // :cond_8
(( android.view.ViewGroup ) v4 ).setBackground ( v5 ); // invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
/* .line 156 */
} // :cond_9
v0 = this.mLabel;
/* iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z */
/* xor-int/2addr v1, v4 */
(( android.widget.TextView ) v0 ).setEnabled ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V
/* .line 157 */
p0 = this.mPadLock;
/* iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z */
if ( p1 != null) { // if-eqz p1, :cond_a
/* move v2, v3 */
} // :cond_a
(( android.widget.ImageView ) p0 ).setVisibility ( v2 ); // invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
return;
} // .end method
public void init ( android.view.View$OnClickListener p0, android.view.View$OnClickListener p1, android.view.View$OnLongClickListener p2 ) {
/* .locals 0 */
/* .line 168 */
/* invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V */
/* .line 169 */
p1 = this.mLabelContainer;
(( android.view.ViewGroup ) p1 ).setOnClickListener ( p2 ); // invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
/* .line 170 */
p1 = this.mLabelContainer;
(( android.view.ViewGroup ) p1 ).setOnLongClickListener ( p3 ); // invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
/* .line 171 */
p1 = this.mLabelContainer;
int p2 = 0; // const/4 p2, 0x0
(( android.view.ViewGroup ) p1 ).setClickable ( p2 ); // invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V
/* .line 172 */
p0 = this.mLabelContainer;
(( android.view.ViewGroup ) p0 ).setLongClickable ( p2 ); // invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V
return;
} // .end method
protected void onConfigurationChanged ( android.content.res.Configuration p0 ) {
/* .locals 1 */
/* .line 82 */
/* invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V */
/* .line 83 */
p1 = this.mLabel;
com.android.systemui.FontSizeUtils .updateFontSize ( p1,v0 );
/* .line 84 */
p0 = this.mSecondLine;
com.android.systemui.FontSizeUtils .updateFontSize ( p0,v0 );
return;
} // .end method
protected void onMeasure ( Integer p0, Integer p1 ) {
/* .locals 2 */
/* .line 108 */
/* invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V */
/* .line 112 */
v0 = this.mLabel;
v0 = (( android.widget.TextView ) v0 ).getLineCount ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I
/* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I */
/* if-gt v0, v1, :cond_1 */
v0 = this.mSecondLine;
(( android.widget.TextView ) v0 ).getText ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
v0 = android.text.TextUtils .isEmpty ( v0 );
/* if-nez v0, :cond_0 */
v0 = this.mSecondLine;
/* .line 113 */
v0 = (( android.widget.TextView ) v0 ).getLineHeight ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I
v1 = this.mSecondLine;
v1 = (( android.widget.TextView ) v1 ).getHeight ( ); // invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I
/* if-le v0, v1, :cond_0 */
/* .line 119 */
} // :cond_0
v0 = this.mLabel;
v0 = (( android.widget.TextView ) v0 ).isSingleLine ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->isSingleLine()Z
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 120 */
v0 = this.mLabel;
int v1 = 0; // const/4 v1, 0x0
(( android.widget.TextView ) v0 ).setSingleLine ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V
/* .line 121 */
/* invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V */
/* .line 114 */
} // :cond_1
} // :goto_0
v0 = this.mLabel;
v0 = (( android.widget.TextView ) v0 ).isSingleLine ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->isSingleLine()Z
/* if-nez v0, :cond_2 */
/* .line 115 */
v0 = this.mLabel;
(( android.widget.TextView ) v0 ).setSingleLine ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V
/* .line 116 */
/* invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V */
} // :cond_2
} // :goto_1
return;
} // .end method
public void setShowLabels ( Boolean p0 ) {
/* .locals 2 */
/* .line 177 */
v0 = this.mHandler;
/* new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileView-$$ExternalSyntheticLambda0; */
/* invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileView;Z)V */
(( android.os.Handler ) v0 ).post ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return;
} // .end method
