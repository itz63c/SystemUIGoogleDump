.class public final Lcom/google/android/systemui/smartspace/SmallHash;
.super Ljava/lang/Object;
.source "SmallHash.java"


# direct methods
.method public static hash(I)I
    .locals 0

    .line 24
    rem-int/lit16 p0, p0, 0x2000

    return p0
.end method

.method public static hash(Ljava/lang/String;)I
    .locals 0

    .line 14
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/SmallHash;->hash(I)I

    move-result p0

    return p0
.end method
