.class public Lcom/google/android/systemui/gamedashboard/WidgetView;
.super Landroid/widget/FrameLayout;
.source "WidgetView.java"


# instance fields
.field private mContentView:Landroid/widget/LinearLayout;

.field private final mDefaultBackgroundColor:I

.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLoading:Z

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private final mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mTipText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget p2, Lcom/android/systemui/R$drawable;->game_dashboard_button_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x112002c

    .line 42
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDefaultBackgroundColor:I

    return-void
.end method

.method private updateInternal(Landroid/graphics/drawable/Drawable;IIILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 144
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mIcon:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/android/systemui/R$id;->tip_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mTipText:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mTitle:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDescription:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/android/systemui/R$id;->content_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mContentView:Landroid/widget/LinearLayout;

    .line 55
    sget v0, Lcom/android/systemui/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoadingView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoading:Z

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->rounded_rectangle_28dp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDefaultBackgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x112002f

    .line 70
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 72
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 77
    check-cast v1, Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoading:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoading:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public update(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public update(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View$OnClickListener;)V
    .locals 6

    .line 101
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/WidgetView;->updateInternal(Landroid/graphics/drawable/Drawable;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V
    .locals 6

    .line 90
    iget v2, p0, Lcom/google/android/systemui/gamedashboard/WidgetView;->mDefaultBackgroundColor:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/WidgetView;->updateInternal(Landroid/graphics/drawable/Drawable;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method
