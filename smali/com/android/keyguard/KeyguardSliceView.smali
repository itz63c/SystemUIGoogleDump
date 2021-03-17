.class public Lcom/android/keyguard/KeyguardSliceView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;,
        Lcom/android/keyguard/KeyguardSliceView$Row;
    }
.end annotation


# instance fields
.field private mContentChangeListener:Ljava/lang/Runnable;

.field private mDarkAmount:F

.field private mHasHeader:Z

.field private mIconSize:I

.field private mIconSizeWithHeader:I

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLockScreenMode:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

.field private final mRowPadding:I

.field private mRowTextSize:F

.field private final mRowWithHeaderPadding:I

.field private mRowWithHeaderTextSize:F

.field private mTextColor:I

.field mTitle:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 79
    iput p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mLockScreenMode:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 100
    sget v0, Lcom/android/systemui/R$dimen;->subtitle_clock_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowPadding:I

    .line 101
    sget v0, Lcom/android/systemui/R$dimen;->header_subtitle_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderPadding:I

    .line 103
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v0, 0x113

    .line 104
    invoke-virtual {p1, p2, v0, v1}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    const/4 p0, 0x2

    const-wide/16 v2, 0x226

    .line 105
    invoke-virtual {p1, p0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v2, 0x3

    .line 106
    invoke-virtual {p1, v2, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 107
    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 109
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 111
    sget-object p0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, p0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 112
    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .line 283
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 288
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 289
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getTextColor()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    iget p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method public hasHeader()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    return p0
.end method

.method hideSlice()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 148
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method onDensityOrFontScaleChanged()V
    .locals 2

    .line 314
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 315
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    .line 316
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 318
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_row_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 118
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/android/systemui/R$id;->row:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView$Row;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    .line 120
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 121
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 122
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    .line 123
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 125
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_row_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setContentChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 277
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setDarkAmount(F)V

    .line 279
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 335
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setTextColor(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method showSlice(Landroidx/slice/widget/RowContent;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/RowContent;",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    const-string v0, "KeyguardSliceView#showSlice"

    .line 182
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 183
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 187
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 193
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 201
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v3

    .line 202
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 203
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-lez p1, :cond_4

    move v4, v1

    :cond_4
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    iget v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mLockScreenMode:I

    if-eqz v7, :cond_5

    const v7, 0x800003

    goto :goto_3

    :cond_5
    const/16 v7, 0x11

    .line 206
    :goto_3
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 207
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderPadding:I

    goto :goto_4

    :cond_6
    iget v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowPadding:I

    :goto_4
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-ge v6, p1, :cond_10

    .line 211
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/widget/RowContent;

    .line 212
    invoke-virtual {v4}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    .line 213
    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 215
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    if-nez v9, :cond_7

    .line 217
    new-instance v9, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    iget-object v10, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->setTextColor(I)V

    .line 219
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    sub-int v8, v6, v8

    .line 221
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v10, v9, v8}, Lcom/android/keyguard/KeyguardSliceView$Row;->addView(Landroid/view/View;I)V

    .line 225
    :cond_7
    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 226
    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v8

    goto :goto_6

    :cond_8
    move-object v8, v5

    .line 228
    :goto_6
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v10

    if-nez v10, :cond_9

    move-object v10, v5

    goto :goto_7

    .line 231
    :cond_9
    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    :goto_7
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v4}, Landroidx/slice/widget/SliceContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    goto :goto_8

    :cond_a
    iget v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 233
    :goto_8
    invoke-virtual {v9, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v7, "image"

    invoke-static {v4, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 240
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    goto :goto_9

    :cond_b
    iget v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 241
    :goto_9
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object v10, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 243
    instance-of v10, v4, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/keyguard/KeyguardSliceView;->mLockScreenMode:I

    if-ne v10, v0, :cond_c

    .line 247
    check-cast v4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 249
    :cond_c
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    .line 250
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 251
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v4, v1, v1, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a

    :cond_d
    move-object v4, v5

    .line 254
    :cond_e
    :goto_a
    invoke-virtual {v9, v4, v5, v5, v5}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_f

    move v4, v0

    goto :goto_b

    :cond_f
    move v4, v1

    .line 256
    :goto_b
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setClickable(Z)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 260
    :cond_10
    :goto_c
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_12

    .line 261
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 262
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 263
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    :cond_11
    add-int/2addr v1, v0

    goto :goto_c

    .line 268
    :cond_12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_13

    .line 269
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 271
    :cond_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v2
.end method

.method public updateLockScreenMode(I)V
    .locals 5

    .line 156
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLockScreenMode:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42300000    # 44.0f

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 165
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 170
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2, v3, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setLockscreenMode(I)V

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
