.class public Lcom/android/wm/shell/bubbles/BubblePositioner;
.super Ljava/lang/Object;
.source "BubblePositioner.java"


# instance fields
.field private mBubbleBitmapSize:I

.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;

.field private mInsets:Landroid/graphics/Insets;

.field private mOrientation:I

.field private mPinLocation:Landroid/graphics/PointF;

.field private mPositionRect:Landroid/graphics/Rect;

.field private mRestingStackPosition:Landroid/graphics/PointF;

.field private mShowingInTaskbar:Z

.field private mTaskbarIconSize:I

.field private mTaskbarPosition:I

.field private mTaskbarSize:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 83
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(I)V

    return-void
.end method

.method private adjustForTaskbar()V
    .locals 6

    .line 155
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v2, v1, Landroid/graphics/Insets;->left:I

    .line 160
    iget v3, v1, Landroid/graphics/Insets;->right:I

    .line 161
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 168
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

    .line 177
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBubbleBitmapSize()I
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    if-lez v0, :cond_0

    int-to-float p0, v0

    const v0, 0x3f5c28f6    # 0.86f

    mul-float/2addr p0, v0

    goto :goto_0

    .line 219
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBitmapSize:I

    int-to-float p0, p0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public getBubbleSize()I
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    :goto_0
    return v0
.end method

.method public getDefaultStartPosition()Landroid/graphics/PointF;
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 253
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

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_stack_starting_offset_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 258
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(ZF)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Insets;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getRestingPosition()Landroid/graphics/PointF;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTaskbarPosition()I
    .locals 0

    .line 275
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    return p0
.end method

.method public getTaskbarSize()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    return p0
.end method

.method public isLandscape()Z
    .locals 1

    .line 192
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPinnedLocation(Landroid/graphics/PointF;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    return-void
.end method

.method public setRestingPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method public showBubblesVertically()Z
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

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

    .line 268
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    return p0
.end method

.method public update(I)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 99
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 100
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    or-int/2addr v2, v3

    .line 101
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateForTaskbar(IIZI)V
    .locals 0

    .line 121
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    .line 122
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    .line 123
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 124
    iput p4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    .line 125
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(I)V

    return-void
.end method

.method public updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 1

    .line 130
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOrientation:I

    .line 131
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    .line 133
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 134
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v0, p3, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 135
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 136
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Insets;->right:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 137
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 140
    sget p2, Lcom/android/wm/shell/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 141
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBitmapSize:I

    .line 142
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->adjustForTaskbar()V

    :cond_0
    return-void
.end method
