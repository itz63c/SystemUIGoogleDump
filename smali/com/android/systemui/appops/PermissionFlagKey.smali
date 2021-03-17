.class final Lcom/android/systemui/appops/PermissionFlagKey;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final permission:Ljava/lang/String;

.field private final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/appops/PermissionFlagKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/appops/PermissionFlagKey;

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    iget p1, p1, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getUid()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionFlagKey(permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/appops/PermissionFlagKey;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/appops/PermissionFlagKey;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
