.class final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAssistantIconResourceIdFactory;

    return-object v0
.end method
