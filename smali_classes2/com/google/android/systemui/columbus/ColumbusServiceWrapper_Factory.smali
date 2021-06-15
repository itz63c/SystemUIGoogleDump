.class public final Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;
.super Ljava/lang/Object;
.source "ColumbusServiceWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final columbusServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
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
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;-><init>(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusServiceProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->newInstance(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->get()Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    move-result-object p0

    return-object p0
.end method