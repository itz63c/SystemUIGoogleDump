.class Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "WindowMagnification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/accessibility/WindowMagnification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationControllerSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier<",
        "Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 76
    invoke-direct {p0, p5}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 80
    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/view/Display;)Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;
    .locals 8

    .line 85
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 88
    :goto_0
    new-instance v7, Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v3}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/accessibility/WindowMagnificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MirrorWindowControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/accessibility/WindowMagnifierCallback;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 93
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier-$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p0

    .line 94
    invoke-virtual {v7, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onNavigationModeChanged(I)V

    .line 95
    new-instance p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    return-object p0
.end method

.method protected bridge synthetic createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;->createInstance(Landroid/view/Display;)Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    move-result-object p0

    return-object p0
.end method
