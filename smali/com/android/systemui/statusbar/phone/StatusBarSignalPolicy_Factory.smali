.class public final Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private final carrierConfigTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarrierConfigTracker;",
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

.field private final iconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarrierConfigTracker;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->iconControllerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarrierConfigTracker;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/util/CarrierConfigTracker;)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/util/CarrierConfigTracker;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->iconControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/util/CarrierConfigTracker;)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy_Factory;->get()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    move-result-object p0

    return-object p0
.end method
