.class final Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
.super Ljava/lang/Object;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSHeaderInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Location"
.end annotation


# instance fields
.field private left:I

.field private right:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iget v3, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    iget p1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLeft()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    return p0
.end method

.method public final getRight()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLocationFromOffset(IIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    sub-int/2addr p1, p2

    sub-int p2, p1, p3

    .line 123
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    goto :goto_0

    .line 126
    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    add-int/2addr p2, p3

    .line 127
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
