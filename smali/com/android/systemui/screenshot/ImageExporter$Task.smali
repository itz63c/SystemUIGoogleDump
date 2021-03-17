.class Lcom/android/systemui/screenshot/ImageExporter$Task;
.super Ljava/lang/Object;
.source "ImageExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ImageExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCaptureTime:Ljava/time/ZonedDateTime;

.field private final mFileName:Ljava/lang/String;

.field private final mFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mQuality:I

.field private final mRequestId:Ljava/util/UUID;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    .line 170
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    .line 171
    iput-object p3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    .line 172
    iput-object p4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    .line 173
    iput-object p5, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 174
    iput p6, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    .line 175
    invoke-static {p4, p5}, Lcom/android/systemui/screenshot/ImageExporter;->createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createEntry(Landroid/graphics/Bitmap$CompressFormat;Ljava/time/ZonedDateTime;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;
        }
    .end annotation

    const-string v0, "ImageExporter_createEntry"

    .line 223
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-static {p2, p1, p3}, Lcom/android/systemui/screenshot/ImageExporter;->createMetadata(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 227
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    .line 229
    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "ContentResolver#insert returned null."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 234
    throw p0
.end method

.method public execute()Lcom/android/systemui/screenshot/ImageExporter$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "ImageExporter_execute"

    .line 179
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter$Result;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ImageExporter$Result;-><init>()V

    const/4 v1, 0x0

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/screenshot/ImageExporter$Task;->createEntry(Landroid/graphics/Bitmap$CompressFormat;Ljava/time/ZonedDateTime;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->access$000()V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/systemui/screenshot/ImageExporter$Task;->writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    .line 193
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->access$000()V

    .line 195
    iget-object v7, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    move-object v5, p0

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/screenshot/ImageExporter$Task;->writeExif(Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V

    .line 196
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->access$000()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ImageExporter$Task;->publishEntry(Landroid/net/Uri;)V

    .line 200
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->timestamp:J

    .line 201
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->requestId:Ljava/util/UUID;

    .line 202
    iput-object v2, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    .line 203
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->fileName:Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->format:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 212
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 214
    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 217
    throw p0
.end method

.method publishEntry(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;
        }
    .end annotation

    const-string v0, "ImageExporter_publishEntry"

    .line 286
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 288
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_pending"

    const/4 v2, 0x0

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date_expires"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    .line 296
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 293
    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "Failed to publish entry. ContentResolver#update reported no rows updated."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 296
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 297
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compress ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] at quality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method writeExif(Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;
        }
    .end annotation

    const-string v0, "ImageExporter_writeExif"

    .line 257
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "rw"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 266
    :try_start_1
    new-instance p0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/ImageExporter;->updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 281
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception p0

    .line 275
    :try_start_4
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ExifInterface threw an exception writing to the file descriptor."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 268
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ExifInterface threw an exception reading from the file descriptor."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 262
    :cond_0
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p1, "ContentResolver#openFile returned null."

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 278
    :try_start_5
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ContentResolver#openFile threw an exception."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    :goto_0
    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 281
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 282
    throw p0
.end method

.method writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;
        }
    .end annotation

    const-string v0, "ImageExporter_writeImage"

    .line 239
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 241
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 248
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 243
    :cond_1
    :try_start_3
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "Bitmap.compress returned false. (Failure unknown)"

    invoke-direct {p1, p2}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 240
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 249
    :try_start_6
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    const-string p2, "ContentResolver#openOutputStream threw an exception."

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 251
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 252
    throw p0
.end method
