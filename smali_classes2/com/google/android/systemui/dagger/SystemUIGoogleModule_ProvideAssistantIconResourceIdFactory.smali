.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideAssistantIconResourceId()I
    .locals 1

    .line 25
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideAssistantIconResourceId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 0

    .line 17
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;->provideAssistantIconResourceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;->get()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method