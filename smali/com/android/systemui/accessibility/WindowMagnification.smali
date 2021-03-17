.class public Lcom/android/systemui/accessibility/WindowMagnification;
.super Lcom/android/systemui/SystemUI;
.source "WindowMagnification.java"

# interfaces
.implements Lcom/android/systemui/accessibility/WindowMagnifierCallback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier<",
            "Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mHandler:Landroid/os/Handler;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private final mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

.field private mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;


# direct methods
.method public static synthetic $r8$lambda$xAKD3X5_TM7cBvKz_fkVSOLulqo(ILcom/android/systemui/accessibility/WindowMagnificationAnimationController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnification;->lambda$onConfigurationChanged$0(ILcom/android/systemui/accessibility/WindowMagnificationAnimationController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/accessibility/ModeSwitchesController;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 7

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 110
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 111
    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    .line 112
    new-instance p3, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;

    const-class p4, Landroid/hardware/display/DisplayManager;

    .line 114
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Landroid/hardware/display/DisplayManager;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/accessibility/WindowMagnification$AnimationControllerSupplier;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Landroid/hardware/display/DisplayManager;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    return-void
.end method

.method private clearWindowMagnificationConnection()V
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$0(ILcom/android/systemui/accessibility/WindowMagnificationAnimationController;)V
    .locals 0

    .line 125
    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->onConfigurationChanged(I)V

    return-void
.end method

.method private setWindowMagnificationConnection()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;-><init>(Lcom/android/systemui/accessibility/WindowMagnification;Landroid/os/Handler;Lcom/android/systemui/accessibility/ModeSwitchesController;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    return-void
.end method


# virtual methods
.method disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->deleteWindowMagnification(Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    :cond_0
    return-void
.end method

.method enableWindowMagnification(IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->enableWindowMagnification(FFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    :cond_0
    return-void
.end method

.method moveWindowMagnifier(IFF)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->moveWindowMagnifier(FF)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1084

    if-nez v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnification-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/accessibility/WindowMagnification-$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->forEach(Ljava/util/function/Consumer;)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/ModeSwitchesController;->onConfigurationChanged(I)V

    :cond_1
    return-void
.end method

.method public onPerformScaleAction(IF)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->onPerformScaleAction(IF)V

    :cond_0
    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public requestWindowMagnificationConnection(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->setWindowMagnificationConnection()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->clearWindowMagnificationConnection()V

    :goto_0
    return-void
.end method

.method setScale(IF)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mAnimationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setScale(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
