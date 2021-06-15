.class public final Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;
.super Ljava/lang/Object;
.source "NotificationLaunchAnimatorController.kt"


# instance fields
.field private final depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 1

    const-string v0, "notificationShadeWindowViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationListContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "depthController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 18
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 19
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method


# virtual methods
.method public final getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;
    .locals 7

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 27
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 29
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, v0

    move-object v5, p1

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    return-object v0
.end method
