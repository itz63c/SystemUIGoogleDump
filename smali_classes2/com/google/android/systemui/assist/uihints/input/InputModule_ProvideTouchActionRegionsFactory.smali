.class public final Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;
.super Ljava/lang/Object;
.source "InputModule_ProvideTouchActionRegionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final iconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/IconController;",
            ">;"
        }
    .end annotation
.end field

.field private final transcriptionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
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
            "Lcom/google/android/systemui/assist/uihints/IconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->iconControllerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->transcriptionControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/IconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTouchActionRegions(Lcom/google/android/systemui/assist/uihints/IconController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/IconController;",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/input/InputModule;->provideTouchActionRegions(Lcom/google/android/systemui/assist/uihints/IconController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->iconControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/IconController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->transcriptionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchActionRegionsFactory;->provideTouchActionRegions(Lcom/google/android/systemui/assist/uihints/IconController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
