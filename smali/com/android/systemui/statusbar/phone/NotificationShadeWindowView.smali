.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
.super Landroid/widget/FrameLayout;
.source "NotificationShadeWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mFakeWindow:Landroid/view/Window;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

.field private mLeftInset:I

.field private mRightInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 65
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 375
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$2;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFakeWindow:Landroid/view/Window;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Landroid/view/ActionMode;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private applyMargins()V
    .locals 7

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    .line 125
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    if-eq v4, v6, :cond_1

    .line 127
    :cond_0
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 128
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 278
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 283
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 284
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 286
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    .line 253
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 254
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 257
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 270
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 271
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 272
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 292
    new-instance p3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ActionMode$Callback;)V

    .line 293
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->handleDispatchTouchEvent(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    .line 82
    sget v0, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 87
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 89
    iget v1, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_4

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_4

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_4

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 102
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 106
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 107
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 110
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 111
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 113
    :cond_6
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 114
    iget v0, v0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->applyMargins()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->didIntercept(Landroid/view/MotionEvent;)V

    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->didNotHandleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    return v0
.end method

.method protected setInteractionEventHandler(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 244
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
