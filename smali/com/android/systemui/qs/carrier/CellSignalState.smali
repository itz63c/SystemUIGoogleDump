.class public final Lcom/android/systemui/qs/carrier/CellSignalState;
.super Ljava/lang/Object;
.source "CellSignalState.kt"


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final mobileSignalIconId:I

.field public final roaming:Z

.field public final typeContentDescription:Ljava/lang/String;

.field public final visible:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    .line 26
    iput p2, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    .line 27
    iput-object p3, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    .line 29
    iput-boolean p5, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v1, 0x0

    if-eqz p7, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p5, v0

    .line 24
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/qs/carrier/CellSignalState;ZILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/qs/carrier/CellSignalState;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/systemui/qs/carrier/CellSignalState;->copy(ZILjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;
    .locals 9

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    .line 41
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;->copy$default(Lcom/android/systemui/qs/carrier/CellSignalState;ZILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p0

    return-object p0
.end method

.method public final copy(ZILjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/qs/carrier/CellSignalState;
    .locals 6

    .line 24
    new-instance p0, Lcom/android/systemui/qs/carrier/CellSignalState;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/carrier/CellSignalState;

    iget-boolean v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    iget-boolean v3, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    iget v3, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    iget-boolean p1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, p0

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalState(visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mobileSignalIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
