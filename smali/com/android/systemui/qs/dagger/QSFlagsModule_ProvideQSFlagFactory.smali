.class public final Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;
.super Ljava/lang/Object;
.source "QSFlagsModule_ProvideQSFlagFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideQSFlag(Lcom/android/systemui/statusbar/FeatureFlags;)Z
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFlagsModule;->provideQSFlag(Lcom/android/systemui/statusbar/FeatureFlags;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;->provideQSFlag(Lcom/android/systemui/statusbar/FeatureFlags;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/dagger/QSFlagsModule_ProvideQSFlagFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
