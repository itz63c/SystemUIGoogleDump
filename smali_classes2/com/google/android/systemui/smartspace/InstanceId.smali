.class public Lcom/google/android/systemui/smartspace/InstanceId;
.super Ljava/lang/Object;
.source "InstanceId.java"


# direct methods
.method public static create(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/Integer;
    .locals 2

    .line 14
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
