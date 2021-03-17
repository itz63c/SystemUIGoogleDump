.class public final Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
.super Ljava/lang/Object;
.source "WakefulnessLifecycle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
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

.method public static create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory$InstanceHolder;->access$000()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->newInstance()Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method
