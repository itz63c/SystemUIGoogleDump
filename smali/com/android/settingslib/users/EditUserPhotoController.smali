.class public Lcom/android/settingslib/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/EditUserPhotoController$RestrictedPopupMenuAdapter;,
        Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFileAuthority:Ljava/lang/String;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mImagesDir:Ljava/io/File;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$-1Zf6w-2UzOqGgbIq8oXYAyNJD8(Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settingslib/users/EditUserPhotoController;->lambda$showUpdatePhotoPopup$1(Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-V3ruWaZqKoi2fP3TA5Gx0ztGA(Lcom/android/settingslib/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method public static synthetic $r8$lambda$l5Ii_wTBlZ-Ga7QDusWqZNnPYVk(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtPWPlbHCgNh8OtV_OqDJWAIyyM(Lcom/android/settingslib/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    .line 107
    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    .line 108
    iput-object p3, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 109
    iput-object p6, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mFileAuthority:Ljava/lang/String;

    .line 111
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p6

    const-string v0, "multi_user"

    invoke-direct {p2, p6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    .line 112
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    xor-int/lit8 p2, p5, 0x1

    const-string p6, "CropEditUserPhoto.jpg"

    .line 113
    invoke-direct {p0, p1, p6, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    xor-int/lit8 p2, p5, 0x1

    const-string p5, "TakeEditUserPhoto.jpg"

    .line 114
    invoke-direct {p0, p1, p5, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 115
    invoke-static {p1}, Lcom/android/settingslib/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mPhotoSize:I

    .line 116
    new-instance p1, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object p4, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/users/EditUserPhotoController;)Landroid/app/Activity;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/users/EditUserPhotoController;)Landroid/net/Uri;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/users/EditUserPhotoController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->cropPhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController;->onPhotoProcessed(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/users/EditUserPhotoController;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mPhotoSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->getRotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "crop"

    const-string/jumbo v1, "true"

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scale"

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    .line 273
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    .line 274
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iget v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mPhotoSize:I

    const-string v1, "outputX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mPhotoSize:I

    const-string v0, "outputY"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1

    const-string p0, "output"

    .line 263
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    invoke-static {p0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method private choosePhoto()V
    .locals 3

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 217
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    const/16 v1, 0x3e9

    invoke-interface {p0, v0, v1}, Lcom/android/settingslib/users/ActivityStarter;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private copyAndCropPhoto(Landroid/net/Uri;)V
    .locals 1

    .line 222
    new-instance v0, Lcom/android/settingslib/users/EditUserPhotoController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 241
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 407
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mFileAuthority:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private cropPhoto()V
    .locals 3

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/android/settingslib/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 250
    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 253
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    const/16 v1, 0x3eb

    invoke-interface {p0, v0, v1}, Lcom/android/settingslib/users/ActivityStarter;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 256
    throw p0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/EditUserPhotoController;->onPhotoNotCropped(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 6

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string p0, "display_max_dim"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 398
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 399
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 394
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    const/16 v0, 0x1f4

    if-eqz p0, :cond_1

    .line 403
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method private getRotation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1

    const/4 p0, -0x1

    .line 363
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 364
    new-instance p2, Landroid/media/ExifInterface;

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    .line 365
    invoke-virtual {p2, p1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "EditUserPhotoController"

    const-string v0, "Error while getting rotation"

    .line 367
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method private static synthetic lambda$showUpdatePhotoPopup$1(Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 198
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 200
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;

    .line 201
    invoke-virtual {p0}, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;->doAction()V

    return-void
.end method

.method static loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 0

    .line 432
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private onPhotoCropped(Landroid/net/Uri;)V
    .locals 1

    .line 281
    new-instance v0, Lcom/android/settingslib/users/EditUserPhotoController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/net/Uri;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 308
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onPhotoNotCropped(Landroid/net/Uri;)V
    .locals 1

    .line 313
    new-instance v0, Lcom/android/settingslib/users/EditUserPhotoController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$3;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/net/Uri;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 353
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onPhotoProcessed(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 384
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 385
    iget-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 387
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v1, "TakeEditUserPhoto.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 390
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v0, "CropEditUserPhoto.jpg"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canTakePhoto(Landroid/content/Context;)Z

    move-result v1

    .line 165
    invoke-static {v0}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canChoosePhoto(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "no_set_user_icon"

    if-eqz v1, :cond_1

    .line 174
    sget v1, Lcom/android/settingslib/R$string;->user_image_take_photo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v5, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;

    new-instance v6, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    invoke-direct {v5, v0, v1, v4, v6}, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v2, :cond_2

    .line 180
    sget v1, Lcom/android/settingslib/R$string;->user_image_choose_photo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;

    new-instance v5, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 187
    iget-object v2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v2, 0x2

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 190
    new-instance v2, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedPopupMenuAdapter;

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/users/EditUserPhotoController$RestrictedPopupMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settingslib/R$dimen;->update_user_photo_popup_min_width:I

    .line 193
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 192
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 194
    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const p0, 0x800003

    .line 195
    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 197
    new-instance p0, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;

    invoke-direct {p0, v1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private takePhoto()V
    .locals 2

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    const/16 v1, 0x3ea

    invoke-interface {p0, v0, v1}, Lcom/android/settingslib/users/ActivityStarter;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 128
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 132
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v2, "content"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid pictureUri scheme: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditUserPhotoController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "172939189"

    aput-object p3, p1, v1

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    const/4 p3, 0x2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    return v1

    .line 140
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;)V

    return v2

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settingslib/users/PhotoCapabilityUtils;->canCropPhoto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->cropPhoto()V

    goto :goto_1

    .line 148
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->onPhotoNotCropped(Landroid/net/Uri;)V

    goto :goto_1

    .line 151
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settingslib/users/EditUserPhotoController;->copyAndCropPhoto(Landroid/net/Uri;)V

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeNewUserPhotoBitmapFile()V
    .locals 2

    .line 436
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v1, "NewUserPhoto.png"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method saveNewUserPhotoBitmap()Ljava/io/File;
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 419
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v3, "NewUserPhoto.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 421
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 422
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 423
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "EditUserPhotoController"

    const-string v2, "Cannot create temp file"

    .line 426
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
