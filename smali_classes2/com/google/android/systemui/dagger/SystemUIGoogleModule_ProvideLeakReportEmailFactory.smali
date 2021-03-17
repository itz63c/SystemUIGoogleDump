.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideLeakReportEmailFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory;
    .locals 1

    .line 22
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideLeakReportEmail()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideLeakReportEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideLeakReportEmailFactory;->provideLeakReportEmail()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
