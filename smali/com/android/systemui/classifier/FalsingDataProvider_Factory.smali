.class public final Lcom/android/systemui/classifier/FalsingDataProvider_Factory;
.super Ljava/lang/Object;
.source "FalsingDataProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/FalsingDataProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final displayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingDataProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)",
            "Lcom/android/systemui/classifier/FalsingDataProvider_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/classifier/FalsingDataProvider;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;-><init>(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/classifier/FalsingDataProvider;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0, p0}, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->newInstance(Landroid/util/DisplayMetrics;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/classifier/FalsingDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider_Factory;->get()Lcom/android/systemui/classifier/FalsingDataProvider;

    move-result-object p0

    return-object p0
.end method
