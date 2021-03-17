.class public final Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;
.super Ljava/lang/Object;
.source "ReverseChargingController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/reversecharging/ReverseChargingController;",
        ">;"
    }
.end annotation


# instance fields
.field private final alarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final bootCompleteCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
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

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final rtxChargerManagerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usbManagerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->rtxChargerManagerOptionalProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->usbManagerOptionalProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;"
        }
    .end annotation

    .line 68
    new-instance v9, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Landroid/app/AlarmManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/BootCompleteCache;)Lcom/google/android/systemui/reversecharging/ReverseChargingController;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;",
            "Landroid/app/AlarmManager;",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/BootCompleteCache;",
            ")",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingController;"
        }
    .end annotation

    .line 76
    new-instance v9, Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Landroid/app/AlarmManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/BootCompleteCache;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/reversecharging/ReverseChargingController;
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->rtxChargerManagerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->usbManagerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/BootCompleteCache;

    invoke-static/range {v1 .. v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Landroid/app/AlarmManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/BootCompleteCache;)Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController_Factory;->get()Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    move-result-object p0

    return-object p0
.end method
