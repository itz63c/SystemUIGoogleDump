.class final Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationShadeDepthController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationShadeDepthController.kt\ncom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,511:1\n1819#2,2:512\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationShadeDepthController.kt\ncom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1\n*L\n200#1,2:512\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4

    const-string p1, "DepthController"

    .line 158
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setUpdateScheduled$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V

    .line 159
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p2

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->getMinBlurRadius()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BlurUtils;->getMaxBlurRadius()I

    move-result v2

    .line 159
    invoke-static {p2, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    int-to-float p2, p2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr p2, v2

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr p2, v1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getNotificationLaunchAnimationParams()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    :goto_0
    sub-float/2addr v2, v1

    mul-float/2addr v2, v2

    mul-float/2addr p2, v2

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getIgnoreShadeBlurUntilHidden$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpg-float v1, p2, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setIgnoreShadeBlurUntilHidden$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V

    :cond_2
    move v3, p2

    .line 178
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getGlobalActionsSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p2

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShowingHomeControls()Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v0

    :cond_4
    float-to-int v1, v3

    .line 182
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, p2

    .line 189
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurRoot$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    :cond_7
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;I)V

    .line 190
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(I)F

    move-result p2

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWallpaperManager$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    goto :goto_4

    :cond_8
    const-string v1, "Won\'t set zoom. Window not attached "

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "Can\'t set zoom. Window is gone: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getListeners$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Ljava/util/List;

    move-result-object p1

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    .line 201
    invoke-interface {v1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;->onWallpaperZoomOutChanged(F)V

    goto :goto_5

    .line 203
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackgroundBlurRadius(I)V

    return-void
.end method
