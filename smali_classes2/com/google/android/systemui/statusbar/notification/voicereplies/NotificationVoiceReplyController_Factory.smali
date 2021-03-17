.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistantIconPaddingResIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final assistantIconResIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final assistantIconSizeResIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconResIdProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconSizeResIdProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconPaddingResIdProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p9, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->statusBarProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p10, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p12, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;"
        }
    .end annotation

    .line 89
    new-instance v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;
    .locals 14

    .line 100
    new-instance v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V

    return-object v13
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;
    .locals 13

    .line 75
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconResIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconSizeResIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->assistantIconPaddingResIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-static/range {v1 .. v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->newInstance(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController_Factory;->get()Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    move-result-object p0

    return-object p0
.end method
