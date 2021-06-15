.class public Lcom/android/wm/shell/bubbles/BubblePositioner;
.super Ljava/lang/Object;
.source "BubblePositioner.java"


# instance fields
.field private mBubbleBitmapSize:I

.field private mBubblePaddingTop:I

.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;

.field private mExpandedViewLargeScreenWidth:I

.field private mExpandedViewPadding:I

.field private mInsets:Landroid/graphics/Insets;

.field private mIsLargeScreen:Z

.field private mLeftRightPadding:[I

.field private mPinLocation:Landroid/graphics/PointF;

.field private mPointerHeight:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mRestingStackPosition:Landroid/graphics/PointF;

.field private mRotation:I

.field private mShowingInTaskbar:Z

.field private mTaskbarIconSize:I

.field private mTaskbarPosition:I

.field private mTaskbarSize:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 80
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mLeftRightPadding:[I

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 89
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    return-void
.end method

.method private adjustForTaskbar()V
    .locals 6

    .line 172
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 175
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v2, v1, Landroid/graphics/Insets;->left:I

    .line 177
    iget v3, v1, Landroid/graphics/Insets;->right:I

    .line 178
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 185
    :cond_1
    :goto_0
    iget v0, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAvailableRect()Landroid/graphics/Rect;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBubbleBitmapSize()I
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    if-lez v0, :cond_0

    int-to-float p0, v0

    const v0, 0x3f5c28f6    # 0.86f

    mul-float/2addr p0, v0

    goto :goto_0

    .line 238
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBitmapSize:I

    int-to-float p0, p0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public getBubbleSize()I
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    :goto_0
    return v0
.end method

.method public getDefaultStartPosition()Landroid/graphics/PointF;
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_stack_starting_offset_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 316
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 318
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(ZF)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 319
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedViewPadding(ZZ)[I
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    add-int/2addr v1, v2

    .line 250
    iget v0, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v0, v2

    .line 251
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v3

    .line 252
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_3

    .line 254
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr p1, v2

    add-int/2addr v0, p1

    if-eqz p2, :cond_2

    .line 256
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v0

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_2
    add-int/2addr v1, p1

    goto :goto_4

    .line 260
    :cond_3
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    if-eqz p2, :cond_4

    .line 262
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, v1

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    sub-int/2addr p1, p2

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    add-int/2addr v0, p1

    .line 266
    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mLeftRightPadding:[I

    aput v1, p0, v4

    .line 267
    aput v0, p0, v3

    return-object p0
.end method

.method public getExpandedViewY()F
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 274
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    :goto_0
    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    .line 277
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    goto :goto_0
.end method

.method public getInsets()Landroid/graphics/Insets;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getRestingPosition()Landroid/graphics/PointF;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTaskbarPosition()I
    .locals 0

    .line 333
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    return p0
.end method

.method public getTaskbarSize()I
    .locals 0

    .line 337
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    return p0
.end method

.method public isLandscape()Z
    .locals 2

    .line 207
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isLargeScreen()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    return p0
.end method

.method public setPinnedLocation(Landroid/graphics/PointF;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    return-void
.end method

.method public setRestingPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    return-void
.end method

.method public showBubblesVertically()Z
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showingInTaskbar()Z
    .locals 0

    .line 326
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    return p0
.end method

.method public update()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 108
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 109
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    or-int/2addr v2, v3

    .line 110
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 122
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateForTaskbar(IIZI)V
    .locals 0

    .line 133
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    .line 134
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    .line 135
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 136
    iput p4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    .line 137
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    return-void
.end method

.method public updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 1

    .line 142
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    .line 143
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    .line 145
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 146
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v0, p3, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 147
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 148
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Insets;->right:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 149
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 151
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 152
    sget p2, Lcom/android/wm/shell/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 153
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBitmapSize:I

    .line 154
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_tablet_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    .line 156
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    .line 157
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_pointer_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    .line 158
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    .line 159
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->adjustForTaskbar()V

    :cond_0
    return-void
.end method
