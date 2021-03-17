.class Lcom/android/systemui/screenshot/ImageExporter$Result;
.super Ljava/lang/Object;
.source "ImageExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ImageExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field format:Landroid/graphics/Bitmap$CompressFormat;

.field requestId:Ljava/util/UUID;

.field timestamp:J

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
