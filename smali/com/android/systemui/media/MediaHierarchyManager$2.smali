.class public final Lcom/android/systemui/media/MediaHierarchyManager$2;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 1

    .line 296
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setFullyAwake(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setFullyAwake(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method
