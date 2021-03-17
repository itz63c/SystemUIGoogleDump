.class public Lcom/android/systemui/qs/tileimpl/QSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field protected mColorLabelActive:Landroid/content/res/ColorStateList;

.field protected mColorLabelInactive:Landroid/content/res/ColorStateList;

.field private mColorLabelUnavailable:Landroid/content/res/ColorStateList;

.field private mDivider:Landroid/view/View;

.field protected mDualTargetAllowed:Z

.field private mExpandIndicator:Landroid/view/View;

.field private mExpandSpace:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field protected mLabelContainer:Landroid/view/ViewGroup;

.field protected mMaxLabelLines:I

.field private mPadLock:Landroid/widget/ImageView;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$SkUsG5Xkrs0bwHWEv5nasOIxDVE(Lcom/android/systemui/qs/tileimpl/QSTileView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->lambda$setShowLabels$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 64
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x31

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelActive:Landroid/content/res/ColorStateList;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelInactive:Landroid/content/res/ColorStateList;

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010038

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelUnavailable:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private synthetic lambda$setShowLabels$0(Z)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_tile_label:I

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->restricted_padlock:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->underline:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDivider:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->expand_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->expand_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->app_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDetailY()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method protected handleExpand(Z)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 7

    .line 128
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v2, :cond_3

    .line 131
    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelActive:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelInactive:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelUnavailable:Landroid/content/res/ColorStateList;

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v3

    .line 148
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleExpand(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    move-object v6, v5

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v4

    if-eq v0, v4, :cond_9

    .line 152
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 153
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 154
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz p1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
