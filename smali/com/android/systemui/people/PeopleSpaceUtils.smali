.class public Lcom/android/systemui/people/PeopleSpaceUtils;
.super Ljava/lang/Object;
.source "PeopleSpaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;,
        Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;
    }
.end annotation


# static fields
.field public static final EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;


# direct methods
.method public static synthetic $r8$lambda$3HoNXA1oKBZT-LU94cnpzBzqG3k(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$6(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G5zdzimecjF3duMQ4-1mCRMobFs(Landroid/os/UserManager;Landroid/content/pm/ShortcutInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$2(Landroid/os/UserManager;Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LsvMCgtq2P1V-UNrGrEnFQKAk_A(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$5(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MV51HZE8JfKBBEXiludEozQSba4(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$4(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VG6FrHNz49dPOLqBy3_-HZNHbss(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getNotificationsByUri$1(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aJc2-UxeeDoHmvGFfV4eWYUnXLU(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$3(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aXvmJhRcEF_Oxv3fHy3jXzOVgmk(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getNotificationsByUri$0(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vu5hQEsuwii95Y-g9F_58_Npmtg(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getDataFromContactsOnBackgroundThread$7(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    return-void
.end method

.method private static addAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 147
    invoke-interface {p0, p3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static augmentTileFromNotification(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILjava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/people/PeopleSpaceTile;",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "I",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile;"
        }
    .end annotation

    const-string v0, "Tile key: "

    const-string v1, "PeopleSpaceUtils"

    if-eqz p3, :cond_7

    .line 233
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 237
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    .line 238
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v3

    .line 241
    invoke-static {p3}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add uri from notification to tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 247
    new-instance v5, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v5, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v5, p1, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;)V

    .line 250
    invoke-virtual {v3, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 252
    :cond_1
    invoke-static {v2}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    move-result p1

    .line 254
    invoke-static {v2}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    move-result-object p5

    if-nez p1, :cond_2

    .line 256
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Notification has no content"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v3}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p5, :cond_3

    .line 262
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/Notification$MessagingStyle$Message;

    goto :goto_0

    :cond_3
    move-object p5, v5

    :goto_0
    if-eqz p5, :cond_4

    .line 265
    invoke-virtual {p5}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz p1, :cond_5

    if-nez v4, :cond_5

    .line 267
    sget p1, Lcom/android/systemui/R$string;->missed_call:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p5}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    if-eqz p5, :cond_6

    .line 268
    invoke-virtual {p5}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    .line 270
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Notification message has text: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " Has last interaction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v2, p5}, Lcom/android/systemui/people/NotificationHelper;->getSenderIfGroupConversation(Landroid/app/Notification;Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 276
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 277
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    iget-object p3, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 278
    invoke-virtual {p2, p3}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 279
    invoke-virtual {p2, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 281
    invoke-virtual {p0, v5}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0, p4}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    .line 234
    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Notification is null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 337
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 338
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 348
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 345
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static getContactAffinity(Landroid/database/Cursor;)F
    .locals 2

    const-string v0, "starred"

    .line 470
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-ltz v0, :cond_1

    .line 472
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    .line 474
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 477
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Affinity is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleSpaceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static getContactLookupKeysWithBirthdaysToday(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lookup"

    const-string v4, "data1"

    .line 493
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype= ? AND data2=3 AND substr(data1,6) = ?"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    aput-object v5, v9, v4

    aput-object v2, v9, v1

    const/4 v1, 0x0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 509
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 508
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 510
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 516
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "PeopleSpaceUtils"

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query birthdays: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    .line 516
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_2
    throw p0
.end method

.method public static getDataFromContacts(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;[I)V"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    const-string v1, "Get birthdays"

    .line 390
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    array-length v1, p3

    if-nez v1, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getContactLookupKeysWithBirthdaysToday(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 393
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v7, p3, v3

    .line 394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/app/people/PeopleSpaceTile;

    if-eqz v6, :cond_2

    .line 395
    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 401
    :cond_1
    invoke-static {p0, p1, v1, v6, v7}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileWithBirthdayAndUpdateAffinity(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/List;Landroid/app/people/PeopleSpaceTile;I)V

    goto :goto_2

    .line 396
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No contact uri for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p0

    .line 397
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getDataFromContactsOnBackgroundThread(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;[I)V"
        }
    .end annotation

    .line 381
    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getLastInteraction(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Ljava/lang/Long;
    .locals 2

    .line 321
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserId(Landroid/app/people/PeopleSpaceTile;)I

    move-result v0

    .line 322
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, v0, p1}, Landroid/app/people/IPeopleManager;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceUtils"

    const-string v0, "Couldn\'t retrieve last interaction time"

    .line 325
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    .line 326
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getMessagesCount(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculating messages count from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notifications."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 186
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/android/systemui/people/NotificationHelper;->isMissedCall(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {v1}, Lcom/android/systemui/people/NotificationHelper;->getMessagingStyleMessages(Landroid/app/Notification;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getNotificationsByUri(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    const-string v1, "Getting notifications by contact URI."

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 169
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 170
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 175
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/IPeopleManager;",
            "Landroid/content/pm/LauncherApps;",
            "Landroid/os/UserManager;",
            "Ljava/util/stream/Stream<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda8;

    .line 291
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserManager;)V

    .line 292
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/LauncherApps;)V

    .line 293
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda7;

    .line 294
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda2;-><init>(Landroid/app/people/IPeopleManager;)V

    .line 295
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda1;

    .line 297
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 299
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getTile(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)Landroid/app/people/PeopleSpaceTile;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "PeopleSpaceUtils"

    if-nez p0, :cond_0

    const-string p0, "ConversationChannel is null"

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 308
    :cond_0
    new-instance v2, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {v2, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    .line 309
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "PeopleSpaceTile is not valid"

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static getUserId(Landroid/app/people/PeopleSpaceTile;)I
    .locals 0

    .line 524
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method private static hasBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Landroid/content/Context;)Z
    .locals 1

    .line 373
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->birthday_status:I

    .line 374
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getDataFromContactsOnBackgroundThread$7(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    .line 382
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getDataFromContacts(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method private static synthetic lambda$getNotificationsByUri$0(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    .line 169
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getNotificationsByUri$1(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 171
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/people/NotificationHelper;->hasReadContactsPermission(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/people/NotificationHelper;->shouldMatchNotificationByUri(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSortedTiles$2(Landroid/os/UserManager;Landroid/content/pm/ShortcutInfo;)Z
    .locals 0

    .line 292
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getSortedTiles$3(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;
    .locals 1

    .line 293
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSortedTiles$4(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    .line 294
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSortedTiles$5(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 1

    .line 295
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 296
    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteraction(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 295
    invoke-virtual {v0, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSortedTiles$6(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance p1, Ljava/lang/Long;

    .line 298
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private static removeAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V
    .locals 2

    .line 155
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-interface {p0, p3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 157
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 5

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing any notification stored for tile Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 213
    invoke-virtual {v0, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set last interaction on clear: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v0, v2, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V
    .locals 3

    .line 127
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 129
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V

    .line 131
    invoke-static {v0, v1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "package_name"

    .line 138
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo p1, "user_id"

    .line 139
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "shortcut_id"

    .line 140
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PeopleSpaceUtils"

    const-string p1, "Not storing for invalid key"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v1

    const-string/jumbo v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p3, :cond_1

    const-string p3, ""

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 115
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->addAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V

    .line 119
    invoke-static {p0, v0, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->addAppWidgetIdForKey(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;ILjava/lang/String;)V

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V
    .locals 4

    .line 415
    invoke-static {p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->hasBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 417
    :goto_0
    invoke-static {p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->hasBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p5, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 419
    :goto_1
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v3

    cmpl-float v3, v3, p4

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p1, p5}, Landroid/app/people/PeopleSpaceTile$Builder;->setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    .line 426
    invoke-virtual {p1, p4}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    :cond_4
    return-void
.end method

.method private static updateTileWithBirthdayAndUpdateAffinity(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/List;Landroid/app/people/PeopleSpaceTile;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/people/PeopleSpaceTile;",
            "I)V"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    const/4 v1, 0x0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 443
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "lookup"

    .line 445
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 444
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getContactAffinity(Landroid/database/Cursor;)F

    move-result v7

    .line 447
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'s birthday today!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget v2, Lcom/android/systemui/R$string;->birthday_status:I

    .line 452
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    .line 450
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    .line 454
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileContactFields(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IFLjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 462
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 459
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to query contact: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_3
    throw p0
.end method
