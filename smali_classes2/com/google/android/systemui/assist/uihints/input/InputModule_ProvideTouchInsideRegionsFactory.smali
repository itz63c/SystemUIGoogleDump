.class public final Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;
.super Ljava/lang/Object;
.source "InputModule_ProvideTouchInsideRegionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final glowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;"
        }
    .end annotation
.end field

.field private final scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ScrimController;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->glowControllerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->transcriptionControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTouchInsideRegions(Lcom/google/android/systemui/assist/uihints/GlowController;Lcom/google/android/systemui/assist/uihints/ScrimController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            "Lcom/google/android/systemui/assist/uihints/ScrimController;",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/InputModule;->provideTouchInsideRegions(Lcom/google/android/systemui/assist/uihints/GlowController;Lcom/google/android/systemui/assist/uihints/ScrimController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;

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

    .line 12
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->glowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/GlowController;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/ScrimController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->transcriptionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/input/InputModule_ProvideTouchInsideRegionsFactory;->provideTouchInsideRegions(Lcom/google/android/systemui/assist/uihints/GlowController;Lcom/google/android/systemui/assist/uihints/ScrimController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
