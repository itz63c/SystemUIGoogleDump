.class Lcom/android/systemui/screenshot/ImageExporter;
.super Ljava/lang/Object;
.source "ImageExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;,
        Lcom/android/systemui/screenshot/ImageExporter$Task;,
        Lcom/android/systemui/screenshot/ImageExporter$Result;
    }
.end annotation


# static fields
.field static final PENDING_ENTRY_TTL:Ljava/time/Duration;

.field private static final SCREENSHOTS_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mQuality:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static synthetic $r8$lambda$ombFAwpFbAn3Rhh4-iGh_uGdzpQ(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter;->lambda$export$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q3DQH4tuPhmqRdWTu9LHnIbtXWk(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/ImageExporter;->lambda$export$1(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lcom/android/systemui/screenshot/ImageExporter;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x18

    .line 58
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->PENDING_ENTRY_TTL:Ljava/time/Duration;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->SCREENSHOTS_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 84
    iput v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    .line 88
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->throwIfInterrupted()V

    return-void
.end method

.method static createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 308
    invoke-static {p1}, Lcom/android/systemui/screenshot/ImageExporter;->fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "Screenshot_%1$tY%<tm%<td-%<tH%<tM%<tS.%2$s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static createMetadata(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 314
    sget-object v1, Lcom/android/systemui/screenshot/ImageExporter;->SCREENSHOTS_PATH:Ljava/lang/String;

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 315
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p1}, Lcom/android/systemui/screenshot/ImageExporter;->getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mime_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_added"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_modified"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    sget-object p1, Lcom/android/systemui/screenshot/ImageExporter;->PENDING_ENTRY_TTL:Ljava/time/Duration;

    .line 320
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "date_expires"

    .line 319
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x1

    .line 321
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "is_pending"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static fileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1

    .line 358
    sget-object v0, Lcom/android/systemui/screenshot/ImageExporter$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown CompressFormat!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "webp"

    return-object p0

    :cond_2
    const-string p0, "png"

    return-object p0

    :cond_3
    const-string p0, "jpg"

    return-object p0
.end method

.method static getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1

    .line 343
    sget-object v0, Lcom/android/systemui/screenshot/ImageExporter$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown CompressFormat!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "image/webp"

    return-object p0

    :cond_2
    const-string p0, "image/png"

    return-object p0

    :cond_3
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private static synthetic lambda$export$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V
    .locals 0

    .line 140
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ImageExporter$Task;->execute()Lcom/android/systemui/screenshot/ImageExporter$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$export$1(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/screenshot/ImageExporter-$$ExternalSyntheticLambda1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method private static throwIfInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method static updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 1

    .line 327
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageUniqueID"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Software"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageWidth"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageLength"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "yyyy:MM:dd HH:mm:ss"

    .line 333
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SSS"

    .line 334
    invoke-static {p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "xxx"

    .line 335
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "DateTimeOriginal"

    .line 337
    invoke-virtual {p0, p4, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTimeOriginal"

    .line 338
    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OffsetTimeOriginal"

    .line 339
    invoke-virtual {p0, p1, p3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/UUID;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/systemui/screenshot/ImageExporter$Result;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/UUID;",
            "Landroid/graphics/Bitmap;",
            "Ljava/time/ZonedDateTime;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/systemui/screenshot/ImageExporter$Result;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v7, Lcom/android/systemui/screenshot/ImageExporter$Task;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/ImageExporter$Task;-><init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 136
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter-$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/screenshot/ImageExporter-$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    invoke-static {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
