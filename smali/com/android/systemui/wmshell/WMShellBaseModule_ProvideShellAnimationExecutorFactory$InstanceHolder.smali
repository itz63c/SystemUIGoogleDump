.class final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideShellAnimationExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;

    return-object v0
.end method
