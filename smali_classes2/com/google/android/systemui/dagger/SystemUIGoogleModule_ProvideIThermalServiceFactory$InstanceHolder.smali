.class final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideIThermalServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;

    return-object v0
.end method
