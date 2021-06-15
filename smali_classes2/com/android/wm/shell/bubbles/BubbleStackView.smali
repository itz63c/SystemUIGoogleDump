.class public Lcom/android/wm/shell/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "BubbleStackView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;,
        Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

.field static final FLYOUT_HIDE_AFTER:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field private mAfterFlyoutHidden:Ljava/lang/Runnable;

.field private final mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mAnimateInFlyout:Ljava/lang/Runnable;

.field private final mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

.field private mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

.field private final mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

.field private mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

.field private mBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

.field private final mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field private mBubbleElevation:I

.field private mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field private mBubbleSize:I

.field private mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private mBubbleTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

.field private mBubbleTouchPadding:I

.field private mCornerRadius:I

.field private mDelayedAnimation:Ljava/lang/Runnable;

.field private final mDelayedAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

.field private final mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

.field private mDesaturateAndDarkenTargetView:Landroid/view/View;

.field private mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

.field private mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

.field private mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field private mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private final mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mExpandedViewContainer:Landroid/widget/FrameLayout;

.field private final mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

.field private mExpandedViewPadding:I

.field private mExpandedViewTemporarilyHidden:Z

.field private mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

.field private mFlyoutClickListener:Landroid/view/View$OnClickListener;

.field private final mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private mFlyoutDragDeltaX:F

.field private mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

.field private final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mHideFlyout:Ljava/lang/Runnable;

.field private mImeOffset:I

.field private final mIndividualBubbleMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

.field private mIsBubbleSwitchAnimating:Z

.field private mIsDraggingStack:Z

.field private mIsExpanded:Z

.field private mIsExpansionAnimating:Z

.field private mIsGestureInProgress:Z

.field private mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field private mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject<",
            "*>;"
        }
    .end annotation
.end field

.field private mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

.field private mManageMenu:Landroid/view/ViewGroup;

.field private mManageSettingsIcon:Landroid/widget/ImageView;

.field private mManageSettingsText:Landroid/widget/TextView;

.field private mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private mMaxBubbles:I

.field private mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPointerHeight:I

.field private mPointerIndexDown:I

.field private mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

.field private final mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private final mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private mShowingManage:Z

.field private mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field private mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

.field private final mStackMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

.field private mStackOnLeftOrWillBe:Z

.field private final mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskbarScrim:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporarilyInvisible:Z

.field private final mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private mUnbubbleConversationCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewUpdatedRequested:Z

.field private mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public static synthetic $r8$lambda$-V6mFhq4BHyJ5Zd5i2XYYU64GpE(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateCollapse$28(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1D4y352dJrKyyvI_hiGx92X-tjo(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$8(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1HVgYyFE29CZeClYWzWefmF8-a4(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method public static synthetic $r8$lambda$28ZbrfjPMYuv2ItBibjN0KrZ8qU(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$6(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$3KHygD_vxBobZSLiVokJApn_AJQ(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$3n9vVcYKaq-sAUOcIUZ1jhl12lY(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Bbc0YGYvsmPSX5nOUzIVXpEge4(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$30(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ZshgCTOLxUQKSSKHQgnq5XXlGQ(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Dppg_agNP7SWWzkxzdyVWy0hRQ(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateExpandedViewTheme$15(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qTCI9e5ZWTrzUjMSDxa2Vj8exc(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateCollapse$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$6utvrjLP9xGqMrfkvnCDrCDhAII(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$showManageMenu$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$7LNLIz12941UAfnDnCydntA6mg0(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateExpandedViewDirection$16(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9XekRbMYIcabOcfxcV4lakudy9I(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$36(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AUCroHGxLGR2WktOe6_06h8y_zg(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$showNewlySelectedBubble$20(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DjZKjrr94LsLQZplD_wFyam4Xpc(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$33(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DzmGWZ0q0Z_S-kfQoSBc6Ke4Tvc(Lcom/android/wm/shell/bubbles/BubbleStackView;ZFLcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateExpansion$24(ZFLcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FnHmA0g4oolY3sW1W_o-MDvZD2I(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateSwitchBubbles()V

    return-void
.end method

.method public static synthetic $r8$lambda$GeMIb2c-Obtef6Qv4ZfWo4VGE4Y(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$GjLzTq8w37RtdSkB2BLn3fI-IAw(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$7(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2lJBgHF8a3Qv9m03_j_t6LoHBY(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$JkPZasSnFD_MrRr0CM0DwpDSbXk(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateBubbleOrder$17(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MM9uyhwTsbdQuzHDyXcXip7CxjI(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$QFCLtKNNQL2W8Yr1Fa-1NJeZVkc(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$QQ1jgSLl0LJhsTq4LIZtlLg_BwY(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$showExpandedViewIfNeeded$22(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qwa9JgezqqOdsBawIzw9Jy_EJik(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateCollapse$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$RHeqypIjRpvaozDhWp1Zuuo52X0(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$setUpManageMenu$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RmeE2bfNFCVknzyMEEm6Q7RhVJ4(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$42(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLUW9_uTLC5TNrDukQb2ZkslK1c(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateExpandedBubble$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$VISsnkF6E-6bKopXm4YI38B28-o(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$VRRlSoOy6XdJCiRiE6ME0w93vig(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$setUpManageMenu$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZK9Zu39Ao2TLFUfWtgiZqqSe_zE(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$setSelectedBubble$19(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nDvjrw6n5wp0baeUnNvQkP3rso(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateExpandedBubble$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9CivYnvzudw7B_UqeFbOxeYuRo(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$setUpManageMenu$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adO38cekQRzlaZ9ueWgLe6IPNsY(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bG42VfHaiPa7Db_56I2waKTAq-s(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateExpansion$26(ZF)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUJEZaLG_hjbjQS6nTFC9rOcGDA(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDiImQt9A44oRG57AmIAgf56YFc(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$41(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h9h20eZrhePXg4bp18CP1Lr7TEI(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$43(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jopWChIOeVdYeUHZn5-w7q_4-so(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$hideExpandedViewIfNeeded$21(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3c7qofHtgQP0XCPlhyifVIodkU(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateExpansion$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$nnh-6xAFU0h45o3ju3FCvcrFXfY(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$showManageMenu$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$swUF2wyNcJ8bzgUVLHF-WYGuVOI(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wM0q_Dz1QVHTfr7-koIS9_ZZjfE(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yMpgN0u31gK2zkgccEqogJzy1ZM(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$updateBubbleOrder$18(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zA2HdIMHNmietQ2yUsAs3ehq01o(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$animateExpansion$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$zIr49QHAAEXwbpZyM0CW508hnf8(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 133
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 169
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 759
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v2, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x43960000    # 300.0f

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 141
    new-instance v2, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 144
    new-instance v2, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 195
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    .line 205
    new-instance v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-direct {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 217
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 227
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const/4 v4, 0x0

    .line 237
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v4, 0x1

    .line 257
    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    const/4 v5, 0x0

    .line 260
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 263
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    .line 266
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 269
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    new-array v6, v2, [F

    .line 272
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v7, -0x1

    .line 278
    iput v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 330
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 331
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 332
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 337
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    .line 339
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 341
    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    invoke-direct {v8, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 352
    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 356
    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleStackView$3;

    const-string v9, "FlyoutCollapseSpring"

    invoke-direct {v8, v0, v9}, Lcom/android/wm/shell/bubbles/BubbleStackView$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 370
    new-instance v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v9, v0, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v8, 0x0

    .line 374
    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 385
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;

    invoke-direct {v10, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 412
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    .line 458
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$5;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    .line 498
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 550
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$7;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    .line 690
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Landroid/view/View$OnClickListener;

    .line 706
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    .line 749
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 750
    new-instance v11, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const v12, 0x44bb8000    # 1500.0f

    const/high16 v13, 0x3f400000    # 0.75f

    invoke-direct {v11, v12, v13}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1039
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda19;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda19;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    move-object/from16 v11, p6

    .line 761
    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v11, p2

    .line 762
    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    move-object/from16 v12, p3

    .line 763
    iput-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 766
    sget v15, Lcom/android/wm/shell/R$integer;->bubbles_max_rendered:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iput v15, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMaxBubbles:I

    .line 767
    sget v15, Lcom/android/wm/shell/R$dimen;->individual_bubble_size:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 768
    sget v15, Lcom/android/wm/shell/R$dimen;->bubble_elevation:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    .line 769
    sget v8, Lcom/android/wm/shell/R$dimen;->bubble_touch_padding:I

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    .line 770
    sget v8, Lcom/android/wm/shell/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerHeight:I

    .line 771
    sget v8, Lcom/android/wm/shell/R$dimen;->pip_ime_offset:I

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mImeOffset:I

    .line 773
    sget v8, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 774
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 776
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v11

    iput-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 778
    iget-object v11, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-array v14, v4, [I

    const v15, 0x1010571

    aput v15, v14, v5

    invoke-virtual {v11, v14}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 780
    invoke-virtual {v11, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mCornerRadius:I

    .line 781
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 783
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda32;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda32;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 789
    new-instance v14, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    new-instance v15, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda46;

    invoke-direct {v15, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda46;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-object/from16 v13, p5

    invoke-direct {v14, v13, v15, v11, v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;-><init>(Lcom/android/wm/shell/common/FloatingContentCoordinator;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 792
    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-direct {v2, v13, v14, v11}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;-><init>(Lcom/android/wm/shell/bubbles/BubblePositioner;ILjava/lang/Runnable;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    if-eqz p4, :cond_0

    move-object/from16 v2, p4

    goto :goto_0

    .line 794
    :cond_0
    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    :goto_0
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    .line 800
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 802
    new-instance v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 803
    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v2, v11}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 804
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 805
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 806
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    .line 810
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 811
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 812
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 813
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 815
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 816
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 820
    new-instance v2, Landroid/view/SurfaceView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    .line 821
    invoke-virtual {v2}, Landroid/view/SurfaceView;->setUseAlpha()V

    .line 822
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 823
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    iget v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mCornerRadius:I

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 824
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 827
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 828
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 829
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 830
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v11

    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 831
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v13

    .line 827
    invoke-virtual {v2, v7, v8, v11, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    .line 836
    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v7, 0x43480000    # 200.0f

    .line 837
    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    const/high16 v7, 0x3f400000    # 0.75f

    .line 838
    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 836
    invoke-virtual {v9, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 839
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 841
    new-instance v2, Lcom/android/wm/shell/bubbles/DismissView;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/bubbles/DismissView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 842
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 845
    iget v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    const-string v7, "bubble_dismiss_radius"

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 850
    new-instance v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 851
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 853
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 854
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 855
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 857
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 858
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 859
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 860
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v7

    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 861
    invoke-virtual {v8}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 858
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 863
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    const/high16 v2, -0x1000000

    .line 870
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 871
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 872
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 873
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 875
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 882
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    .line 911
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 912
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 914
    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    .line 915
    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 939
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 952
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x140

    .line 953
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v4, 0x96

    .line 955
    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 956
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 957
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$10;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 981
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 987
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 988
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 989
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 994
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$11;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleData;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/ManageEducationView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->passEventToMagnetizedObject(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideExpandedViewIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/bubbles/BubbleStackView;)F
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    return p0
.end method

.method static synthetic access$3000(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/StackEducationView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showExpandedViewIfNeeded()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadgesAndZOrder(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Ljava/lang/Runnable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleFlyoutView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/wm/shell/bubbles/BubbleStackView;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/DismissView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->dismissMagnetizedObject()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/StackAnimationController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    return-object p0
.end method

.method private afterExpandedViewAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1728
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 1729
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 1730
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    return-void
.end method

.method private animateCollapse()V
    .locals 7

    .line 1915
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    const/4 v0, 0x0

    .line 1918
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 1920
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v1, 0x1

    .line 1921
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 1923
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    .line 1927
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 1928
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1929
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1933
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->notifyPreparingToCollapse()V

    .line 1935
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1936
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 1935
    invoke-virtual {v2, v4, v5}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 1940
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1941
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1945
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Overflow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1946
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 1948
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1951
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 1952
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v2

    .line 1953
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 1954
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 1956
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1957
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eqz v3, :cond_2

    .line 1958
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 1960
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    sub-int/2addr v3, v4

    :goto_1
    int-to-float v3, v3

    .line 1962
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v4, v5, v5, v3, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    goto :goto_2

    .line 1966
    :cond_3
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v2, v6

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1969
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result v4

    .line 1966
    invoke-virtual {v3, v5, v5, v2, v4}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    .line 1972
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 1975
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1976
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 1979
    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 1980
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const v4, 0x3f666666    # 0.9f

    .line 1982
    invoke-static {v4}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1981
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 1986
    invoke-static {v4}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1985
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 1989
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda27;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    aput-object v3, v1, v0

    .line 1992
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 2015
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private animateDesaturateAndDarken(Landroid/view/View;Z)V
    .locals 1

    .line 2259
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 2267
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2269
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2270
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2272
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2273
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleStackView$13;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2281
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method private animateExpansion()V
    .locals 10

    .line 1786
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    .line 1787
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v0

    const/4 v1, 0x1

    .line 1788
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 1789
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz v2, :cond_0

    .line 1790
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 1792
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    const/4 v2, 0x0

    .line 1794
    invoke-direct {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadgesAndZOrder(Z)V

    .line 1795
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 1796
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    .line 1797
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 1798
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda33;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda33;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 1804
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showingInTaskbar()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1806
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTaskbarPosition()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    .line 1807
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTaskbarSize()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1808
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    iget-boolean v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    .line 1810
    :cond_1
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTaskbarSize()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1808
    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1811
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1815
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1816
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1817
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1820
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Overflow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1821
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 1823
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v2

    .line 1826
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 1827
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v2

    if-eqz v0, :cond_4

    .line 1832
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 1833
    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    :goto_2
    sub-float v3, v2, v3

    .line 1834
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const-wide/16 v6, 0x0

    .line 1841
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    if-lez v4, :cond_5

    const v4, 0x43520001    # 210.00002f

    .line 1844
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    float-to-long v6, v3

    :cond_5
    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3f666666    # 0.9f

    if-eqz v0, :cond_7

    .line 1850
    iget v8, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v8, v8

    div-float/2addr v8, v3

    add-float/2addr v8, v2

    .line 1851
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eqz v3, :cond_6

    .line 1852
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v3, v9

    iget v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    add-int/2addr v3, v9

    goto :goto_3

    .line 1854
    :cond_6
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    sub-int/2addr v3, v9

    iget v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    sub-int/2addr v3, v9

    :goto_3
    int-to-float v3, v3

    .line 1856
    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v9, v4, v4, v3, v8}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    goto :goto_4

    .line 1861
    :cond_7
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v9, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v9, v9

    div-float/2addr v9, v3

    add-float/2addr v9, v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1865
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result v3

    .line 1861
    invoke-virtual {v8, v4, v4, v9, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    .line 1867
    :goto_4
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 1869
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1870
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v3, v5}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setExpandedContentAlpha(F)V

    .line 1874
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAlphaAnimating(Z)V

    .line 1877
    :cond_8
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda40;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Ljava/lang/Runnable;

    .line 1911
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-interface {p0, v1, v6, v7}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private animateFlyoutCollapsed(ZF)V
    .locals 3

    .line 2298
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 2301
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2302
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_0

    const v2, 0x44bb8000    # 1500.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43480000    # 200.0f

    .line 2301
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2305
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 2306
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2307
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    .line 2309
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    if-eqz v0, :cond_1

    neg-int p0, p0

    :cond_1
    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 2308
    :goto_1
    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private animateSwitchBubbles()V
    .locals 5

    .line 2020
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2024
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 2028
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 2030
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2031
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2033
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2034
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2035
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 2036
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    .line 2037
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v2

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 2038
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    .line 2039
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    goto :goto_1

    .line 2041
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 2043
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 2042
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    .line 2045
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 2048
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2049
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Overflow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 2050
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    if-eqz v0, :cond_4

    .line 2052
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    goto :goto_3

    .line 2053
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2051
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v0

    .line 2055
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2056
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2058
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    .line 2060
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2061
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eqz v1, :cond_5

    .line 2062
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    add-int/2addr v1, v2

    goto :goto_4

    .line 2064
    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    sub-int/2addr v1, v2

    :goto_4
    int-to-float v1, v1

    .line 2067
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    goto :goto_5

    .line 2071
    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2075
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    .line 2071
    invoke-virtual {v1, v3, v3, v0, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    .line 2078
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 2080
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda26;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    const-wide/16 v2, 0x19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private beforeExpandedViewAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1721
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 1722
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 1723
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 1724
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    return-void
.end method

.method private cancelAllExpandCollapseSwitchAnimations()V
    .locals 1

    .line 2117
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    .line 2119
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 2120
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 2122
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelDelayedExpandCollapseSwitchAnimations()V
    .locals 2

    .line 2110
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2112
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 2113
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void
.end method

.method private clearFlyoutOnHide()V
    .locals 2

    .line 2423
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2424
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2427
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2428
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    return-void
.end method

.method private dismissBubbleIfExists(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private dismissMagnetizedObject()V
    .locals 2

    .line 2243
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2245
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->dismissBubbleIfExists(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    .line 2247
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    :goto_0
    return-void
.end method

.method private getPrefBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 1142
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1143
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private hideExpandedViewIfNeeded()V
    .locals 5

    .line 1735
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_1

    .line 1737
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1741
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 1744
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const v2, 0x3f666666    # 0.9f

    .line 1746
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1745
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 1750
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1749
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 1753
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 1758
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideFlyoutImmediate()V
    .locals 2

    .line 2416
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->clearFlyoutOnHide()V

    .line 2417
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2418
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2419
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->hideFlyout()V

    return-void
.end method

.method private synthetic lambda$animateCollapse$27()V
    .locals 1

    .line 1938
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    return-void
.end method

.method private synthetic lambda$animateCollapse$28(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1990
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$animateCollapse$29()V
    .locals 3

    .line 1993
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1994
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    .line 1995
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1996
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide(Z)V

    .line 2004
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    const/4 v1, 0x1

    .line 2005
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadgesAndZOrder(Z)V

    .line 2006
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    if-eqz v0, :cond_1

    .line 2008
    invoke-interface {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setTaskViewVisibility(Z)V

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showingInTaskbar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2012
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTaskbarScrim:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$animateExpansion$23()V
    .locals 1

    .line 1799
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1800
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowManageEdu()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateExpansion$24(ZFLcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1889
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1893
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    goto :goto_0

    .line 1894
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 1895
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1898
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$animateExpansion$25()V
    .locals 1

    .line 1902
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    .line 1903
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    .line 1904
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1905
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    const/4 v0, 0x0

    .line 1906
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateExpansion$26(ZF)V
    .locals 5

    .line 1878
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1880
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 1881
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1883
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1882
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 1886
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1885
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V

    .line 1888
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda30;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    .line 1901
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 1909
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$33(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    const/4 v0, 0x0

    .line 2348
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    .line 2350
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_0

    .line 2352
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 2353
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 2354
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2358
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2359
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_1
    const/4 p1, 0x0

    .line 2363
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$34()V
    .locals 3

    .line 2379
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2380
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 2382
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 2384
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 v0, 0x0

    .line 2385
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    .line 2386
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$35()V
    .locals 3

    .line 2378
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda29;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    .line 2388
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$36(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 12

    .line 2374
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2377
    :cond_0
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;

    invoke-direct {v7, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 2392
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getFlyoutMessage()Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2394
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2393
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->animateUpdate(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;FLandroid/graphics/PointF;Z)V

    goto :goto_0

    .line 2396
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2397
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getFlyoutMessage()Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    move-result-object v2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2398
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2399
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v5

    .line 2400
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotColor()I

    move-result v6

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    .line 2403
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getDotCenter()[F

    move-result-object v9

    .line 2404
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result p1

    xor-int/lit8 v10, p1, 0x1

    iget-object v11, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2397
    invoke-virtual/range {v1 .. v11}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setupFlyoutStartingAsDot(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[FZLcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 2407
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$30(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    .line 2095
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$31()V
    .locals 1

    const/4 v0, 0x0

    .line 2098
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 2099
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$32()V
    .locals 6

    .line 2081
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2082
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 2087
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2089
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 2088
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 2092
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 2091
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 2094
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda25;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    aput-object v3, v2, v1

    .line 2097
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 2101
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$hideExpandedViewIfNeeded$21(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1754
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 387
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 390
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->hideFlyout()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 990
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v0, :cond_0

    .line 991
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1047
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->isShowingOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->onAllBubblesAnimatedOut()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    .line 864
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    .line 865
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 866
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 876
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    .line 877
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$5()V
    .locals 0

    .line 902
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 884
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 885
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    .line 886
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 887
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->updateResources()V

    .line 888
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 890
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    if-eqz p1, :cond_0

    .line 891
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;)V

    const/4 p1, 0x0

    .line 893
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 896
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_1

    .line 898
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    .line 899
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    .line 900
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 901
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 904
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 905
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 906
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 908
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 916
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 917
    invoke-virtual {p1, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p3, v0, p3

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p3, v1

    sub-float p3, v0, p3

    .line 920
    invoke-virtual {p2, p3, p3, p3, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 927
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 930
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 932
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 933
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 940
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 941
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 942
    invoke-direct {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    goto :goto_0

    .line 943
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 944
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_0

    .line 983
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setExpandedContentAlpha(F)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$41(Ljava/util/function/Consumer;)V
    .locals 1

    .line 2664
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$42(Ljava/util/function/Consumer;)V
    .locals 1

    .line 2663
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda41;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda41;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$43(Ljava/util/function/Consumer;)V
    .locals 3

    .line 2642
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    if-eqz v0, :cond_2

    .line 2643
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 2644
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2649
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_1

    .line 2650
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2655
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 2656
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 2657
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 2655
    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 2659
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 2660
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2662
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda38;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    return-void

    .line 2645
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSelectedBubble$19(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    .line 1619
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 1618
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1620
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$12(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 1074
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->dismissBubbleIfExists(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$13(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 1080
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mUnbubbleConversationCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$14(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 1085
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/Bubble;->getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1090
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 1091
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 p1, 0x9

    .line 1092
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showExpandedViewIfNeeded$22(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1779
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$showManageMenu$37()V
    .locals 2

    .line 2525
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2526
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2528
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateObscuredTouchableRegion()V

    return-void
.end method

.method private synthetic lambda$showManageMenu$38()V
    .locals 2

    .line 2541
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2542
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2544
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateObscuredTouchableRegion()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showNewlySelectedBubble$20(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1645
    invoke-interface {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setTaskViewVisibility(Z)V

    .line 1648
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 1649
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v1, 0x4

    .line 1651
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    const/4 v1, 0x3

    .line 1653
    invoke-direct {p0, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 1655
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Z)V

    const/4 p1, 0x1

    .line 1656
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Z)V

    return-void
.end method

.method private synthetic lambda$updateBubbleOrder$17(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 1550
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1551
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1552
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateBubbleOrder$18(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    .line 1560
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateExpandedBubble$39(Landroid/view/View;)V
    .locals 0

    .line 2568
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    return-void
.end method

.method private synthetic lambda$updateExpandedBubble$40()V
    .locals 1

    .line 2572
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda22;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$updateExpandedViewDirection$16(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 1320
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateExpandedViewTheme$15(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :cond_0
    return-void
.end method

.method private logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V
    .locals 9

    if-eqz p1, :cond_0

    .line 2793
    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_0

    .line 2794
    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    move-object v4, v0

    .line 2796
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2799
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v5

    .line 2800
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v6

    .line 2801
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v7

    .line 2802
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v8

    move-object v2, p1

    move v3, p2

    .line 2796
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/bubbles/BubbleData;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;ILjava/lang/String;IIFF)V

    return-void
.end method

.method private maybeShowManageEdu()V
    .locals 2

    .line 1119
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowManageEdu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-nez v0, :cond_1

    .line 1123
    new-instance v0, Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/ManageEducationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 1124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/graphics/Rect;)V

    return-void
.end method

.method private maybeShowStackEdu()Z
    .locals 2

    .line 1150
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowStackEdu()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-nez v0, :cond_1

    .line 1154
    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/StackEducationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 1155
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->show(Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method private notifyExpansionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Z)V
    .locals 0

    .line 2126
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2127
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private passEventToMagnetizedObject(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2235
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private releaseAnimatingOutBubbleBuffer()V
    .locals 1

    .line 2675
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    if-eqz v0, :cond_0

    .line 2676
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2677
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    return-void
.end method

.method private requestUpdate()V
    .locals 2

    .line 2468
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2471
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 2472
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2473
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDesaturationAndDarken()V
    .locals 3

    .line 2287
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2288
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2290
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2291
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2292
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private screenshotAnimatingOutBubbleIntoSurface(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2588
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2594
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    .line 2597
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    if-eqz v1, :cond_1

    .line 2598
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    .line 2602
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->snapshotActivitySurface()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Bubbles"

    .line 2606
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2607
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2610
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    if-eqz v0, :cond_3

    .line 2611
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2618
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 2619
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2620
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2621
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2622
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2624
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2625
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskViewLocationOnScreen()[I

    move-result-object v0

    .line 2626
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLocationOnScreen()[I

    move-result-object v1

    .line 2629
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2633
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 2634
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2635
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 2636
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2637
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 2640
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda39;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2613
    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2590
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private setUpFlyout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1176
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/16 v1, 0x8

    .line 1177
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1180
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setUpManageMenu()V
    .locals 3

    .line 1053
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1057
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->bubble_manage_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    .line 1059
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->setDefaultSpringConfig(Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 1063
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$12;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$12;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1069
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/wm/shell/R$id;->bubble_manage_menu_dismiss_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/wm/shell/R$id;->bubble_manage_menu_dont_bubble_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/wm/shell/R$id;->bubble_manage_menu_settings_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/wm/shell/R$id;->bubble_manage_menu_settings_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    .line 1098
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/wm/shell/R$id;->bubble_manage_menu_settings_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    .line 1101
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1102
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private shouldShowFlyout(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 2

    .line 2314
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getFlyoutMessage()Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    .line 2315
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 2316
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2318
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz p1, :cond_0

    .line 2319
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2320
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2325
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    .line 2326
    sget-object p0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowManageEdu()Z
    .locals 1

    const-string v0, "HasSeenBubblesManageOnboarding"

    .line 1109
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getPrefBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->forceShowUserEducation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldShowStackEdu()Z
    .locals 1

    const-string v0, "HasSeenBubblesOnboarding"

    .line 1133
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getPrefBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->forceShowUserEducation(Landroid/content/Context;)Z

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

.method private showExpandedViewIfNeeded()V
    .locals 5

    .line 1765
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1769
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 1771
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1773
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1772
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 1776
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 1775
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 1778
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 1780
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 1782
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showManageMenu(Z)V
    .locals 9

    .line 2477
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 2481
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2488
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2489
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    .line 2490
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getAppBadge()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2491
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/wm/shell/R$string;->bubbles_app_settings:I

    new-array v6, v0, [Ljava/lang/Object;

    .line 2492
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 2491
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2495
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2496
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2497
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    if-eqz v3, :cond_2

    .line 2498
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 2497
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/TaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    .line 2503
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    .line 2507
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_2
    int-to-float v3, v3

    .line 2508
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    .line 2510
    :goto_3
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    mul-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v2, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz p1, :cond_7

    .line 2512
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2513
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2514
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sub-float v2, v3, v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2515
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2516
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2518
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2519
    invoke-virtual {p1, v2, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2520
    invoke-virtual {p1, v2, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2521
    invoke-virtual {p1, v2, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2522
    invoke-virtual {p1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2523
    invoke-virtual {p1, v2, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda31;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    aput-object v2, v0, v1

    .line 2524
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 2530
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 2532
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 2534
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2535
    invoke-virtual {p1, v8, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2536
    invoke-virtual {p1, v6, v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2537
    invoke-virtual {p1, v6, v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sub-float/2addr v3, v2

    .line 2538
    invoke-virtual {p1, v6, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 2539
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda21;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    aput-object v2, v0, v1

    .line 2540
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 2547
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    :goto_4
    return-void

    .line 2482
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 3

    .line 1632
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1633
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1634
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 1636
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    .line 1637
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 1642
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1643
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateBadgesAndZOrder(Z)V
    .locals 6

    .line 2709
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2711
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 2712
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMaxBubbles:I

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    mul-int/2addr v4, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setZ(F)V

    .line 2713
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 2715
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    .line 2716
    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    if-nez v2, :cond_2

    .line 2719
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    goto :goto_2

    .line 2721
    :cond_2
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideDotAndBadge(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateExpandedBubble()V
    .locals 4

    .line 2556
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2557
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    .line 2558
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    const/4 v1, 0x0

    .line 2560
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 2561
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAlphaAnimating(Z)V

    .line 2562
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    .line 2563
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    .line 2564
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2565
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2566
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2567
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2568
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setManageClickListener(Landroid/view/View$OnClickListener;)V

    .line 2570
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda28;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateExpandedView()V
    .locals 5

    .line 2685
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2686
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Overflow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2687
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2688
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v4

    .line 2687
    invoke-virtual {v3, v4, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewPadding(ZZ)[I

    move-result-object v0

    .line 2689
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    aget v4, v0, v2

    aget v0, v0, v1

    invoke-virtual {v3, v4, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2690
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_2

    .line 2691
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2693
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2694
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2695
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2696
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 2697
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v1

    .line 2696
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateView([I)V

    .line 2698
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 2701
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    return-void
.end method

.method private updateOverflow()V
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->update()V

    .line 1189
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1190
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1189
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    .line 1191
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    return-void
.end method

.method private updateOverflowVisibility()V
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isShowingOverflow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->setVisible(I)V

    return-void
.end method

.method private updatePointerPosition()V
    .locals 2

    .line 2728
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 2735
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v0

    .line 2736
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setPointerPosition(FZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 6

    .line 1423
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1424
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1425
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1426
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1427
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1426
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1428
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1429
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1428
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1430
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1433
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private updateTemporarilyInvisibleAnimation(Z)V
    .locals 4

    .line 1025
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1027
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    if-eqz v0, :cond_0

    return-void

    .line 1032
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 1033
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1035
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateUserEdu()V
    .locals 1

    .line 1161
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    .line 1162
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1165
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowManageEdu()V

    .line 1166
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz p0, :cond_1

    .line 1167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1480
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowStackEdu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 1489
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1495
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setDotBadgeOnLeft(Z)V

    .line 1497
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1500
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1501
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1502
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1500
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 1504
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 1505
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2340
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowFlyout(Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2344
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 2345
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->clearFlyoutOnHide()V

    .line 2346
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda35;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    .line 2367
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->addDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 2371
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda34;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2409
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2410
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x10

    .line 2411
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    if-eq v0, v2, :cond_0

    return v1

    .line 2172
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    goto :goto_0

    .line 2174
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, -0x1

    .line 2176
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    .line 2179
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2186
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-eqz v4, :cond_4

    .line 2187
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2191
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 2192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "Stack view state:"

    .line 282
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubblesOnScreen()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->formatBubblesString(Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  bubbles on screen:       "

    .line 286
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  gestureInProgress:       "

    .line 287
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showingDismiss:          "

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->isShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isExpansionAnimating:    "

    .line 289
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  expandedContainerVis:    "

    .line 290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  expandedContainerAlpha:  "

    .line 291
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  expandedContainerMatrix: "

    .line 292
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p1, :cond_2

    const-string p1, "Expanded bubble state:"

    .line 299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedBubbleKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewVis:    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewAlpha:  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewTaskId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  activityViewVis:    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  activityViewAlpha:  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "  activityView is null"

    .line 315
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Expanded bubble view state: expanded bubble view is null"

    .line 318
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "Expanded bubble state: expanded bubble is null"

    .line 321
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBubbleCount()I
    .locals 0

    .line 2744
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2758
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getBubblesOnScreen()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 2807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2808
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2809
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2810
    instance-of v3, v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v3, :cond_0

    .line 2811
    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 2812
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    .line 2813
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1470
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method public getNormalizedXPosition()F
    .locals 3

    .line 2765
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 2766
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2767
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getNormalizedYPosition()F
    .locals 3

    .line 2774
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 2775
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2776
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .locals 0

    .line 2781
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getTouchableRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 2441
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 2447
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 2448
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->isShowingOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2449
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2451
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2452
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2453
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2454
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2457
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2460
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2461
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2462
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2463
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method hideCurrentInputMethod()V
    .locals 0

    .line 1711
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hideCurrentInputMethod()V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 1454
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method public isExpansionAnimating()Z
    .locals 0

    .line 1461
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1280
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    const/4 v0, 0x3

    .line 1271
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1274
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getTouchableRegion(Landroid/graphics/Rect;)V

    .line 1275
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1287
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1291
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    if-eqz p0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->cleanUpExpandedState()V

    :cond_0
    return-void
.end method

.method public onDisplaySizeChanged()V
    .locals 4

    .line 1246
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 1247
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    .line 1248
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1249
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display size changed. Icon null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bubbles"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 1257
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->updateResources()V

    .line 1258
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->updateResources()V

    .line 1259
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->setMagneticFieldRadiusPx(I)V

    .line 1260
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1262
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1263
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 1260
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;)V

    .line 1264
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_2

    .line 1265
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    :cond_2
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    .line 2133
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mImeOffset:I

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setImeHeight(I)V

    .line 2135
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 2136
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2137
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->animateForImeVisibility(Z)F

    move-result p1

    .line 2141
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2142
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    .line 2145
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 2146
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-static {p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p2

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 2148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    add-float/2addr p0, p1

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 2147
    invoke-virtual {p2, v0, p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 2150
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    goto :goto_1

    .line 2152
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p2, :cond_2

    .line 2153
    invoke-interface {p2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2154
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setImeVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1299
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    .line 1241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedViewDirection(I)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 3

    .line 1221
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 1222
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1223
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 1224
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1225
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 1227
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1228
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 1208
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    .line 1209
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 1210
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 1211
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedViewTheme()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1357
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 1360
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p2

    const/high16 v1, 0x100000

    if-ne p1, v1, :cond_1

    .line 1364
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    .line 1366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$string;->accessibility_bubble_dismissed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1365
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v0

    :cond_1
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 1369
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_2
    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_3

    .line 1372
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    .line 1374
    :cond_3
    sget v1, Lcom/android/wm/shell/R$id;->action_move_top_left:I

    if-ne p1, v1, :cond_4

    .line 1375
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    .line 1377
    :cond_4
    sget v1, Lcom/android/wm/shell/R$id;->action_move_top_right:I

    if-ne p1, v1, :cond_5

    .line 1378
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    .line 1380
    :cond_5
    sget v1, Lcom/android/wm/shell/R$id;->action_move_bottom_left:I

    if-ne p1, v1, :cond_6

    .line 1381
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    .line 1383
    :cond_6
    sget v1, Lcom/android/wm/shell/R$id;->action_move_bottom_right:I

    if-ne p1, v1, :cond_7

    .line 1384
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    :cond_7
    return v2
.end method

.method removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    const/4 v0, 0x0

    .line 1514
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1515
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1516
    instance-of v2, v1, Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 1517
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    .line 1519
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    goto :goto_1

    .line 1522
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupViews()V

    .line 1524
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    const/4 v0, 0x5

    .line 1525
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1529
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "was asked to remove Bubble, but didn\'t find the view! "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setBubbleVisibility(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 0

    .line 1700
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1701
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1675
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    .line 1678
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 1682
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 1684
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->getSysuiProxy()Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->onStackExpandChanged(Z)V

    .line 1686
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_2

    .line 1687
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateCollapse()V

    .line 1688
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    goto :goto_0

    .line 1690
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateExpansion()V

    .line 1692
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 1693
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 1696
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;Z)V

    return-void
.end method

.method setFlyoutStateForDragLength(F)V
    .locals 7

    .line 2200
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 2205
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    if-eqz v0, :cond_1

    neg-float p1, p1

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 2209
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpl-float v3, p1, v4

    if-lez v3, :cond_a

    :cond_2
    cmpl-float v2, p1, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    if-eqz v0, :cond_4

    if-gtz v2, :cond_5

    :cond_4
    if-nez v0, :cond_6

    if-gez v1, :cond_6

    :cond_5
    move v3, v5

    :cond_6
    if-eqz v6, :cond_7

    sub-float/2addr p1, v4

    goto :goto_1

    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :goto_1
    if-eqz v3, :cond_8

    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 2224
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 2225
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    if-eqz v6, :cond_9

    const/4 v5, 0x2

    :cond_9
    int-to-float v2, v5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v2, p1, v0

    .line 2230
    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getRestingTranslationX()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1578
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    return-void

    .line 1587
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-ne v1, p1, :cond_1

    return-void

    .line 1591
    :cond_1
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1592
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    goto :goto_0

    .line 1594
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    .line 1597
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_3

    .line 1602
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->cancelAllExpandCollapseSwitchAnimations()V

    .line 1604
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 1608
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v0, :cond_5

    .line 1610
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1613
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    .line 1617
    :cond_4
    :try_start_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda43;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->screenshotAnimatingOutBubbleIntoSurface(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1623
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 1624
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1627
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :goto_1
    return-void
.end method

.method public setTemporarilyInvisible(Z)V
    .locals 0

    .line 1010
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method public setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mUnbubbleConversationCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1327
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1330
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/wm/shell/R$id;->action_move_top_left:I

    sget v3, Lcom/android/wm/shell/R$string;->bubble_accessibility_action_move_top_left:I

    .line 1331
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1332
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1334
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/wm/shell/R$id;->action_move_top_right:I

    sget v3, Lcom/android/wm/shell/R$string;->bubble_accessibility_action_move_top_right:I

    .line 1335
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1336
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1338
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/wm/shell/R$id;->action_move_bottom_left:I

    sget v3, Lcom/android/wm/shell/R$string;->bubble_accessibility_action_move_bottom_left:I

    .line 1339
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1340
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1342
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/wm/shell/R$id;->action_move_bottom_right:I

    sget v3, Lcom/android/wm/shell/R$string;->bubble_accessibility_action_move_bottom_right:I

    .line 1343
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1344
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1347
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1348
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_0

    .line 1349
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 1351
    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 1541
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x2

    .line 1542
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method public updateBubbleOrder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    .line 1549
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda37;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V

    .line 1555
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpansionAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isExpansionAnimating()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1559
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;

    .line 1560
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1561
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->animateReorder(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1556
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadgesAndZOrder(Z)V

    .line 1563
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method public updateContentDescription()V
    .locals 11

    .line 1394
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1398
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1399
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1400
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 1402
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/wm/shell/R$string;->notification_bubble_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1407
    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1408
    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    .line 1412
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    .line 1413
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/wm/shell/R$string;->bubble_content_description_stack:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v0

    aput-object v3, v10, v7

    .line 1415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v6

    .line 1413
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1409
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/wm/shell/R$string;->bubble_content_description_single:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    aput-object v3, v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method updateExpandedViewDirection(I)V
    .locals 1

    .line 1315
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    .line 1316
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1319
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda42;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateExpandedViewTheme()V
    .locals 1

    .line 1303
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    .line 1304
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1307
    :cond_0
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda44;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda44;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateFontScale(F)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFontSize(F)V

    return-void
.end method

.method updateOverflowButtonDot()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1196
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->setShowDot(Z)V

    return-void

    .line 1201
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->setShowDot(Z)V

    return-void
.end method

.method updateStackPosition()V
    .locals 2

    .line 1716
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 1717
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    return-void
.end method
