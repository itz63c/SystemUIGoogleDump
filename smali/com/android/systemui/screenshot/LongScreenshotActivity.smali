.class public Lcom/android/systemui/screenshot/LongScreenshotActivity;
.super Landroid/app/Activity;
.source "LongScreenshotActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;
    }
.end annotation


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mCacheLoadFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/systemui/screenshot/ImageLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheSaveFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mCropView:Lcom/android/systemui/screenshot/CropView;

.field private mEdit:Landroid/view/View;

.field private final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field private mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

.field private final mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotHolder;

.field private mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

.field private mOutputBitmap:Landroid/graphics/Bitmap;

.field private mPreview:Landroid/widget/ImageView;

.field private mSave:Landroid/view/View;

.field private mSavedImagePath:Ljava/io/File;

.field private mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

.field private mShare:Landroid/view/View;

.field private mTransitionStarted:Z

.field private mTransitionView:Landroid/widget/ImageView;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$Ise6YOW3HWrs4du3NMRkxL3Oqj8(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->lambda$onStart$1(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MYFi5wKU3CkJeeDGZ8VeNuDOoFA(Lcom/android/systemui/screenshot/LongScreenshotActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->lambda$onCreate$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZlZSXMYcGJIm8arvK1OF2XBF6s(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->lambda$onLongScreenshotReceived$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$k5xu7-vF8LkGJAloB_x6-IZSwV0(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->lambda$startExport$3(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOUpLbBDnQlAC3CzBI4dsyuYNs4(Lcom/android/systemui/screenshot/LongScreenshotActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->onClicked(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/LongScreenshotHolder;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 103
    iput-object p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 104
    iput-object p4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 105
    iput-object p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 106
    iput-object p5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotHolder;

    return-void
.end method

.method private doEdit(Landroid/net/Uri;)V
    .locals 3

    .line 299
    sget v0, Lcom/android/systemui/R$string;->config_screenshotEditor:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const-string v0, "image/png"

    .line 304
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 305
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    const-string v0, "screenshot_preview_image"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionStarted:Z

    .line 314
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 315
    invoke-static {p0, p1, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 314
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private doShare(Landroid/net/Uri;)V
    .locals 2

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/png"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 322
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x10008001

    .line 323
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 325
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 328
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    return-void
.end method

.method private synthetic lambda$onLongScreenshotReceived$2()V
    .locals 3

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheSaveFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LongScreenshotActivity"

    const-string v2, "Error saving temp image file"

    .line 211
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onStart$1(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2

    const-string v0, "LongScreenshotActivity"

    const-string v1, "cached bitmap load complete"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ImageLoader$Result;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->onCachedImageLoaded(Lcom/android/systemui/screenshot/ImageLoader$Result;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to load cached image"

    .line 163
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startExport$3(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->onExportCompleted(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method private onCachedImageLoaded(Lcom/android/systemui/screenshot/ImageLoader$Result;)V
    .locals 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCachedImageLoaded(imageResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    iget-object v2, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 222
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 221
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/screenshot/MagnifierView;->setDrawable(Landroid/graphics/drawable/Drawable;II)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->fileName:Ljava/io/File;

    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    return-void
.end method

.method private onClicked(Landroid/view/View;)V
    .locals 2

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    .line 333
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 p1, 0x0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 335
    sget p1, Lcom/android/systemui/R$id;->save:I

    if-ne v0, p1, :cond_0

    .line 336
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->SAVE:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    goto :goto_0

    .line 337
    :cond_0
    sget p1, Lcom/android/systemui/R$id;->edit:I

    if-ne v0, p1, :cond_1

    .line 338
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 339
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->EDIT:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    goto :goto_0

    .line 340
    :cond_1
    sget p1, Lcom/android/systemui/R$id;->share:I

    if-ne v0, p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 342
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->SHARE:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onExportCompleted(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/systemui/screenshot/ImageExporter$Result;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 375
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/screenshot/ImageExporter$Result;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    sget-object v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->$SwitchMap$com$android$systemui$screenshot$LongScreenshotActivity$PendingAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p2, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->doShare(Landroid/net/Uri;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object p1, p2, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->doEdit(Landroid/net/Uri;)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "LongScreenshotActivity"

    const-string p2, "failed to export"

    .line 377
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onLongScreenshotReceived(Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;)V
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongScreenshotReceived(longScreenshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 191
    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getHeight()I

    move-result v2

    .line 190
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/screenshot/MagnifierView;->setDrawable(Landroid/graphics/drawable/Drawable;II)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getTop()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 194
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 197
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getPageHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 198
    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 196
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/screenshot/CropView;->animateBoundaryTo(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 200
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/screenshot/CropView;->animateBoundaryTo(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    const/4 p1, 0x1

    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 205
    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/screenshot/ImageExporter;->exportAsTempFile(Ljava/util/concurrent/Executor;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheSaveFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 206
    new-instance v0, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static renderBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 230
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "Bitmap Export"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 232
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 233
    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 234
    invoke-virtual {v1, p1}, Landroid/graphics/RecordingCanvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 235
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p0, p1}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V
    .locals 5

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startExport(action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "No drawable, skipping export!"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 355
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 354
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/screenshot/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "Crop bounds empty, skipping export."

    .line 358
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    .line 364
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->renderBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 366
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 365
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private updateImageDimensions()V
    .locals 9

    .line 396
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 403
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 404
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 405
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v2

    div-float v5, v3, v4

    .line 409
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    .line 410
    iget-object v7, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    cmpl-float v8, v1, v5

    if-lez v8, :cond_1

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-int v1, v4

    sub-int/2addr v2, v1

    .line 419
    div-int/lit8 v2, v2, 0x2

    .line 420
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 421
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v2

    .line 420
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/screenshot/CropView;->setExtraPadding(II)V

    add-int/2addr v7, v2

    .line 423
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/screenshot/CropView;->setExtraPadding(II)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/screenshot/CropView;->setImageWidth(I)V

    move v2, v1

    goto :goto_0

    :cond_1
    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v0, v3

    .line 427
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/android/systemui/screenshot/CropView;->setExtraPadding(II)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/CropView;->setImageWidth(I)V

    move v0, v3

    .line 434
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/screenshot/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 438
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 439
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 441
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method cleanupCache()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheSaveFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 276
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget v0, Lcom/android/systemui/R$layout;->long_screenshot:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 117
    sget v0, Lcom/android/systemui/R$id;->preview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    .line 119
    sget v0, Lcom/android/systemui/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    .line 120
    sget v0, Lcom/android/systemui/R$id;->share:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    .line 121
    sget v0, Lcom/android/systemui/R$id;->crop_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/CropView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 122
    sget v0, Lcom/android/systemui/R$id;->magnifier:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/MagnifierView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    .line 123
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/screenshot/CropView;->setCropInteractionListener(Lcom/android/systemui/screenshot/CropView$CropInteractionListener;)V

    .line 124
    sget v0, Lcom/android/systemui/R$id;->transition:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "capture-response"

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/ScrollCaptureResponse;

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    if-eqz p1, :cond_1

    const-string v0, "saved-image-path"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Missing saved state entry with key \'saved-image-path\'!"

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 145
    new-instance p1, Lcom/android/systemui/screenshot/ImageLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/ImageLoader;-><init>(Landroid/content/ContentResolver;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ImageLoader;->load(Ljava/io/File;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "LongScreenshotActivity"

    const-string v1, "onDestroy"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "LongScreenshotActivity"

    const-string v1, "onPause"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LongScreenshotActivity"

    const-string v1, "onSaveInstanceState"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "saved-image-path"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "LongScreenshotActivity"

    const-string v1, "onStart"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_0

    const-string v1, "mCacheLoadFuture != null"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 158
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotHolder;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/LongScreenshotHolder;->takeLongScreenshot()Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->onLongScreenshotReceived(Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;)V

    goto :goto_0

    :cond_1
    const-string v1, "No long screenshot available!"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongScreenshotActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionStarted:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse;->close()V

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->cleanupCache()V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    if-eqz p0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->release()V

    :cond_2
    return-void
.end method
