.class public Lcom/android/wm/shell/draganddrop/DragLayout;
.super Landroid/view/View;
.source "DragLayout.java"


# instance fields
.field private mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

.field private mDisplayMargin:I

.field private mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

.field private mHasDropped:Z

.field private mInsets:Landroid/graphics/Insets;

.field private mIsShowing:Z

.field private final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 59
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 66
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$dimen;->drop_layout_display_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 69
    new-instance p2, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    .line 70
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private recomputeDropTargets()V
    .locals 9

    .line 116
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getTargets(Landroid/graphics/Insets;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 120
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 122
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x2a5d7de3

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_1
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z
    .locals 3

    .line 192
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 193
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHasDropped:Z

    .line 196
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;)V

    .line 199
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    return v1
.end method

.method public hasDropped()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHasDropped:Z

    return p0
.end method

.method public hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
    .locals 4

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsShowing:Z

    .line 164
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startVisibilityAnimation(ZLandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 168
    iget v2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 169
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0, v3}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startBoundsAnimation(Landroid/graphics/Rect;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    move-object p1, v0

    .line 176
    :cond_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragLayout$1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/draganddrop/DragLayout$1;-><init>(Lcom/android/wm/shell/draganddrop/DragLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    :cond_2
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 76
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 77
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragLayout;->recomputeDropTargets()V

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->start(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHasDropped:Z

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsShowing:Z

    .line 109
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragLayout;->recomputeDropTargets()V

    return-void
.end method

.method public update(Landroid/view/DragEvent;)V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 135
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 134
    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getTargetAtLocation(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eq v0, p1, :cond_3

    .line 137
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x58520c75

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startVisibilityAnimation(ZLandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 142
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 143
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startBoundsAnimation(Landroid/graphics/Rect;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startVisibilityAnimation(ZLandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 148
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 149
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->setRegionBounds(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    iget-object v1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startBoundsAnimation(Landroid/graphics/Rect;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    iget-object v1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;->startBoundsAnimation(Landroid/graphics/Rect;Landroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    .line 155
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropOutline:Lcom/android/wm/shell/draganddrop/DropOutlineDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

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
