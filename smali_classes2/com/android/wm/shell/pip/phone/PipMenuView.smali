.class public Lcom/android/wm/shell/pip/phone/PipMenuView;
.super Landroid/widget/FrameLayout;
.source "PipMenuView.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field protected mDismissButton:Landroid/view/View;

.field private final mHideMenuRunnable:Ljava/lang/Runnable;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMainHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field protected mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

.field protected mResizeHandle:Landroid/view/View;

.field protected mSettingsButton:Landroid/view/View;

.field protected mTopEndContainer:Landroid/view/View;

.field protected mViewRoot:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$6XIQFkz_elD7etJcKadv0cxhW2I(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$showMenu$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_oiADxaejLr5dACX4s8rmIWm1c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TVGiqqzKEZGnpVVCecTNWyek8VQ(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIdnozLD4vi0K38Zv_I0w2iOV1U(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxqhoWYuErw7GDyfTQ7fpYp-LKk(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apC0Uo0wV_xZDBuo55rW3f1_jIQ(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$6(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqt4HxzwfoABS5aX6t-eYbjsORw(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$5(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 118
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 132
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 133
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 135
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 136
    sget p2, Lcom/android/wm/shell/R$layout;->pip_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 138
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    sget p1, Lcom/android/wm/shell/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    .line 141
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    sget p1, Lcom/android/wm/shell/R$id;->menu_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 p2, 0x0

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 144
    sget p1, Lcom/android/wm/shell/R$id;->top_end_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    .line 145
    sget p1, Lcom/android/wm/shell/R$id;->settings:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 147
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    new-instance p3, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget p1, Lcom/android/wm/shell/R$id;->dismiss:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 154
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    new-instance p3, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget p1, Lcom/android/wm/shell/R$id;->expand_button:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget p1, Lcom/android/wm/shell/R$id;->resize_handle:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 163
    sget p1, Lcom/android/wm/shell/R$id;->actions_group:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->pip_between_action_padding_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    .line 166
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    .line 167
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->bindViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 170
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->initAccessibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/phone/PipMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipMenuView;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/phone/PipMenuView;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    return-void
.end method

.method private cancelDelayedHide()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissPip()V
    .locals 5

    .line 484
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 487
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    invoke-direct {p0, v4, v1, v0, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private expandPip()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;ZZZ)V
    .locals 9

    .line 342
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eqz v0, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 345
    invoke-direct {p0, v0, p4, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChange(IZLjava/lang/Runnable;)V

    .line 347
    :cond_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 348
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 348
    invoke-static {p2, p4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 350
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    .line 352
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v0

    aput v4, v5, v3

    .line 351
    invoke-static {p4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 353
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    .line 354
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v4, v6, v3

    .line 353
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 355
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    .line 356
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    aput v4, v7, v3

    .line 355
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p2, v6, v0

    aput-object p4, v6, v3

    aput-object v2, v6, v1

    const/4 p2, 0x3

    aput-object v4, v6, p2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 358
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object p4, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    const-wide/16 p3, 0x7d

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 360
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/android/wm/shell/pip/phone/PipMenuView$4;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView$4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method private initAccessibility()V
    .locals 1

    .line 174
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showSettings()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dismissPip()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->expandPip()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenu$3()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x1e

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 274
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static synthetic lambda$updateActionViews$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateActionViews$5(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 432
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 433
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateActionViews$6(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 1

    .line 440
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuView"

    const-string v0, "Failed to send action"

    .line 442
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyMenuStateChange(IZLjava/lang/Runnable;)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 470
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->onMenuStateChanged(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private repostDelayedHide(I)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 509
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showSettings()V
    .locals 5

    .line 492
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 494
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 496
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x10008000

    .line 497
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 9

    .line 395
    sget v0, Lcom/android/wm/shell/R$id;->expand_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 396
    sget v1, Lcom/android/wm/shell/R$id;->actions_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 397
    sget-object v2, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 405
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 408
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 409
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 410
    sget v4, Lcom/android/wm/shell/R$layout;->pip_menu_action:I

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 412
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 416
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v1, p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    move p1, v2

    .line 425
    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 426
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 427
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 430
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageButton;)V

    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 436
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 438
    new-instance v5, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda1;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :cond_5
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 447
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const v1, 0x3f0a3d71    # 0.54f

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 451
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7

    if-lez p1, :cond_7

    .line 452
    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_6
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 459
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_action_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_expand_container_edge_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 464
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_8

    :cond_9
    :goto_7
    const/4 p0, 0x4

    .line 403
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_8
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    .line 208
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 211
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method fadeOutMenu()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 310
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 311
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 312
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 4

    .line 378
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_action_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    .line 382
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_expand_action_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 383
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->pip_action_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_expand_container_edge_margin:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    .line 385
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method hideMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method hideMenu(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 336
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method hideMenu(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu()V

    const/4 p0, 0x1

    return p0

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method onPipAnimationEnded()V
    .locals 1

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    return-void
.end method

.method pokeMenu()V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    return-void
.end method

.method setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(Landroid/graphics/Rect;)V

    return-void
.end method

.method showMenu(ILandroid/graphics/Rect;ZZZZ)V
    .locals 9

    .line 225
    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 226
    iget p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eq p6, p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p4, :cond_1

    if-eq p6, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    move p6, v1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    xor-int/2addr p6, v1

    .line 231
    iput-boolean p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 232
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    .line 233
    iget-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p6, :cond_2

    .line 234
    invoke-virtual {p6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 236
    :cond_2
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 237
    iget-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    .line 238
    invoke-virtual {p6}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    .line 237
    invoke-static {p6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    .line 239
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p6, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v5, v6, v1

    .line 240
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 242
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    aput v5, v7, v1

    .line 242
    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 244
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    .line 245
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    const/4 v8, 0x0

    aput v8, v7, v1

    .line 244
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-ne p1, v2, :cond_3

    .line 249
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p6, v7, v0

    aput-object v3, v7, v1

    aput-object v4, v7, v2

    const/4 p6, 0x3

    aput-object v5, v7, p6

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 252
    :cond_3
    iget-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v0

    aput-object v5, v2, v1

    invoke-virtual {p6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 254
    :goto_1
    iget-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-ne p1, v1, :cond_4

    const-wide/16 v1, 0x7d

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0xaf

    :goto_2
    invoke-virtual {p6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_5

    .line 259
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p6, Lcom/android/wm/shell/pip/phone/PipMenuView$3;

    invoke-direct {p6, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p3, p6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    if-eqz p5, :cond_6

    .line 268
    new-instance p3, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView-$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-direct {p0, p1, p4, p3}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChange(IZLjava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    const/4 p3, 0x0

    .line 277
    invoke-direct {p0, p1, p4, p3}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChange(IZLjava/lang/Runnable;)V

    .line 278
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 281
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    const/16 p1, 0x7d0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method updateMenuLayout(Landroid/graphics/Rect;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method
