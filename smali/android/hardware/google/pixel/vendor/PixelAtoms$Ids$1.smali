.class Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids$1;
.super Ljava/lang/Object;
.source "PixelAtoms.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;
    .locals 0

    .line 592
    invoke-static {p1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->forNumber(I)Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 589
    invoke-virtual {p0, p1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids$1;->findValueByNumber(I)Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    move-result-object p0

    return-object p0
.end method
