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
.field private static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$1cvBrVAOsL9AvbP26k59ml66HEU(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getBirthdayStatus$10(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4Sq8Pl6R31vi_V1S_eIk-uFU6K0(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getBirthdaysOnBackgroundThread$17(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qPVMgnJWYN6k5-3LYiG1vejwRE(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$16(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ChAMSEfmUNQvR7Or7UigwsAgN3U(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getTiles$0(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DoRzIjB66EjOP043Ddx3ks0vOBM(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$augmentTilesFromVisibleNotifications$6(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IvWQdPJAeAVueGt0I20LYbhEZAs(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$14(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Je54evl5-L0DdHso_KgNzeL8SwQ(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getTiles$2(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q-WZOES7BZYT8svwrfxUlaYC1WQ(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$setCommonRemoteViewsFields$12(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TVWiHSflHBguJL7KERYRa94PPII(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$setCommonRemoteViewsFields$11(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_IV0jMuljutRt0bsI9N19BodSHk(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$13(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aRolgkL-cCjbHHBhHbWQEEPJ1xs(Ljava/util/Map;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$augmentTilesFromVisibleNotifications$8(Ljava/util/Map;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c-9XQzU74yeMmqD9R9bwyZoHcTY(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getTiles$4(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$clVU-d4yJ1flSBmcXt7XLncbo8w(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getTiles$1(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fvT8Eg2yGHVy9E6P2FnjojJHN-k(Ljava/lang/String;Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$migrateExistingUsersToNewStorage$5(Ljava/lang/String;Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nPJXagJNEftBfplgtxZ58f-NUKQ(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getTiles$3(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oWFbNufvEX4ZCLmNjDVjEisCwk4(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getViewForTile$9(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rgB8zpc9FynIkoaUQjlQYbuyu-Q(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$augmentTilesFromVisibleNotifications$7(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xtz74wCxhKkiRdBEnMSo9esFqVA(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->lambda$getSortedTiles$15(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[!][!]+"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[?][?]+"

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[!?][!?]+"

    .line 120
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "![?].*|.*[?]!"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method static augmentTileFromNotification(Landroid/app/people/PeopleSpaceTile;Landroid/service/notification/StatusBarNotification;)Landroid/app/people/PeopleSpaceTile;
    .locals 1

    .line 428
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastMessagingStyleMessage(Landroid/service/notification/StatusBarNotification;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "PeopleSpaceUtils"

    const-string v0, "Notification doesn\'t have content, skipping."

    .line 430
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 435
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 436
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 437
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method static augmentTileFromVisibleNotifications(Landroid/app/people/PeopleSpaceTile;Ljava/util/Map;)Landroid/app/people/PeopleSpaceTile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/PeopleSpaceTile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 386
    invoke-static {v0, v1, v2}, Lcom/android/systemui/people/PeopleSpaceUtils;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PeopleSpaceUtils"

    if-nez v1, :cond_0

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No existing notifications for key:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Augmenting tile from visible notifications, key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->augmentTileFromNotification(Landroid/app/people/PeopleSpaceTile;Landroid/service/notification/StatusBarNotification;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method static augmentTilesFromVisibleNotifications(Ljava/util/List;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    if-nez p1, :cond_0

    const-string p1, "NotificationEntryManager is null"

    .line 363
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p1

    .line 368
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda20;

    .line 369
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda9;

    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda8;

    .line 371
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of visible notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    .line 377
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 378
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 787
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 788
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 789
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 795
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 800
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 799
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 796
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 803
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 804
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 805
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static createLastInteractionRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;
    .locals 3

    .line 659
    new-instance v0, Landroid/widget/RemoteViews;

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_space_large_avatar_tile:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 662
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v1

    const/4 p1, 0x1

    .line 661
    invoke-static {p0, v1, v2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteractionString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    .line 663
    sget p1, Lcom/android/systemui/R$id;->last_interaction:I

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private static createNotificationRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;
    .locals 6

    .line 635
    new-instance v0, Landroid/widget/RemoteViews;

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_space_notification_content_tile:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 637
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 640
    sget v4, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 641
    sget v1, Lcom/android/systemui/R$id;->content_background:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v4, 0x1

    const-string v5, "setClipToOutline"

    .line 642
    invoke-virtual {v0, v1, v5, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 643
    sget v1, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 646
    invoke-static {v0, v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->setPunctuationRemoteViewsFields(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 647
    sget v4, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 648
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 649
    sget v1, Lcom/android/systemui/R$id;->content_background:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 652
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->subtext:I

    .line 653
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v4

    .line 652
    invoke-static {p0, v4, v5, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteractionString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/widget/RemoteViews;
    .locals 1

    .line 455
    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getViewForTile(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 456
    invoke-static {p0, v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->setCommonRemoteViewsFields(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 457
    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->setLaunchIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/people/PeopleSpaceTile;I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static createStatusRemoteViews(Landroid/content/Context;Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 3

    .line 527
    new-instance v0, Landroid/widget/RemoteViews;

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_space_small_avatar_tile:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 529
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 530
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getStatusTextByType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 533
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 536
    sget p1, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 537
    sget p0, Lcom/android/systemui/R$id;->content_background:I

    const/4 p1, 0x1

    const-string v1, "setClipToOutline"

    invoke-virtual {v0, p0, v1, p1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_0

    .line 539
    :cond_1
    sget p0, Lcom/android/systemui/R$id;->content_background:I

    const/16 p1, 0x8

    invoke-virtual {v0, p0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-object v0
.end method

.method static getBackgroundTextFromMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 694
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 697
    :cond_0
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "!?"

    return-object p0

    .line 700
    :cond_1
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "!"

    if-nez v1, :cond_2

    return-object v2

    .line 704
    :cond_2
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 705
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v3, "?"

    if-nez v1, :cond_3

    return-object v3

    .line 709
    :cond_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    if-ge v0, p0, :cond_4

    return-object v3

    :cond_4
    return-object v2
.end method

.method private static getBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Ljava/util/List;)Landroid/app/people/ConversationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/PeopleSpaceTile;",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/ConversationStatus;"
        }
    .end annotation

    .line 494
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda12;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 495
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/people/ConversationStatus;

    return-object p0

    .line 499
    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 500
    new-instance p1, Landroid/app/people/ConversationStatus$Builder;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBirthdays(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;[I)V"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    const-string v1, "Get birthdays"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    array-length v1, p3

    if-nez v1, :cond_0

    return-void

    .line 894
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getContactLookupKeysWithBirthdaysToday(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 895
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, p3, v3

    .line 896
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/people/PeopleSpaceTile;

    if-eqz v5, :cond_3

    .line 897
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 902
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "No birthdays today"

    .line 903
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-static {p1, p0, v5, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeBirthdayStatusIfPresent(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V

    goto :goto_2

    .line 907
    :cond_2
    invoke-static {p0, p1, v1, v5, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateTileWithBirthday(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/List;Landroid/app/people/PeopleSpaceTile;I)V

    goto :goto_2

    .line 898
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No contact uri for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {p1, p0, v5, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeBirthdayStatusIfPresent(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static getBirthdaysOnBackgroundThread(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;[I)V"
        }
    .end annotation

    .line 884
    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
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

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 978
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lookup"

    const-string v4, "data1"

    .line 979
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

    .line 991
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 993
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 995
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 994
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 996
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1002
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

    .line 999
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

    .line 1002
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1004
    :cond_2
    throw p0
.end method

.method static getKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;
    .locals 2

    .line 1009
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 1013
    invoke-static {v0, v1, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLastInteraction(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Ljava/lang/Long;
    .locals 2

    .line 772
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserId(Landroid/app/people/PeopleSpaceTile;)I

    move-result v0

    .line 773
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 774
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

    .line 776
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    .line 777
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getLastInteractionString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "PeopleSpaceUtils"

    const-string p2, "Could not get valid last interaction"

    .line 813
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    sget p1, Lcom/android/systemui/R$string;->basic_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 816
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 817
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    .line 818
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p2, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p2

    .line 820
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    .line 822
    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-gez v1, :cond_2

    if-eqz p3, :cond_1

    .line 824
    sget p1, Lcom/android/systemui/R$string;->last_interaction_status_less_than:I

    new-array p3, v5, [Ljava/lang/Object;

    new-array v0, v5, [Landroid/icu/util/Measure;

    new-instance v1, Landroid/icu/util/Measure;

    .line 825
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v1, v3, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    .line 824
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->timestamp:I

    new-array p3, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 828
    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 827
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 829
    :cond_2
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-gez v1, :cond_4

    if-eqz p3, :cond_3

    .line 831
    sget p3, Lcom/android/systemui/R$string;->last_interaction_status:I

    new-array v0, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 833
    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 832
    invoke-virtual {p2, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 831
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 836
    :cond_3
    sget p2, Lcom/android/systemui/R$string;->timestamp:I

    new-array p3, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 837
    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 836
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 839
    :cond_4
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v3

    const-wide/16 v6, 0x7

    cmp-long v1, v3, v6

    if-gez v1, :cond_6

    if-eqz p3, :cond_5

    .line 841
    sget p3, Lcom/android/systemui/R$string;->last_interaction_status:I

    new-array v0, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 843
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 842
    invoke-virtual {p2, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 841
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 846
    :cond_5
    sget p2, Lcom/android/systemui/R$string;->timestamp:I

    new-array p3, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 847
    invoke-virtual {p1}, Ljava/time/Duration;->toHours()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 846
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 850
    :cond_6
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_8

    if-eqz p3, :cond_7

    .line 851
    sget p3, Lcom/android/systemui/R$string;->last_interaction_status:I

    goto :goto_0

    .line 852
    :cond_7
    sget p3, Lcom/android/systemui/R$string;->timestamp:I

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    .line 853
    sget p3, Lcom/android/systemui/R$string;->last_interaction_status_over:I

    goto :goto_0

    .line 854
    :cond_9
    sget p3, Lcom/android/systemui/R$string;->over_timestamp:I

    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    new-array v1, v5, [Landroid/icu/util/Measure;

    new-instance v3, Landroid/icu/util/Measure;

    .line 856
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v4, Landroid/icu/util/MeasureUnit;->WEEK:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v3, v1, v2

    .line 855
    invoke-virtual {p2, v1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 850
    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastMessagingStyleMessage(Landroid/service/notification/StatusBarNotification;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 719
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 723
    :cond_0
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v1, "android.messages"

    .line 725
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    .line 726
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p0

    .line 729
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda10;

    .line 730
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 729
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 731
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static getPeopleSpaceTile(Landroid/app/people/IPeopleManager;Landroid/appwidget/AppWidgetManager;Landroid/content/Context;I)Landroid/app/people/PeopleSpaceTile;
    .locals 11

    const-string/jumbo v0, "user_id"

    const-string v1, "package_name"

    const-string v2, ""

    const-string v3, "PeopleSpaceUtils"

    const/4 v4, 0x0

    .line 229
    :try_start_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 231
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 232
    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "shortcut_id"

    .line 233
    invoke-interface {v5, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-ne v8, v7, :cond_2

    .line 235
    :cond_0
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 236
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string p0, "Cannot restore widget"

    .line 238
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 241
    :cond_1
    invoke-static {p2, v9, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->migrateExistingUsersToNewStorage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 247
    :cond_2
    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "options_people_space_tile"

    .line 248
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const-string p1, "Retrieving from storage after reboots"

    .line 254
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-class p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    .line 256
    invoke-interface {p0, v6, v8, v9}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "Could not retrieve conversation from storage"

    .line 258
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 261
    :cond_4
    new-instance p2, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {p2, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to retrieve conversation for tile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/IPeopleManager;",
            "Landroid/content/pm/LauncherApps;",
            "Ljava/util/stream/Stream<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda17;

    .line 742
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/LauncherApps;)V

    .line 743
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda16;

    .line 744
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda2;-><init>(Landroid/app/people/IPeopleManager;)V

    .line 745
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda1;

    .line 747
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 749
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getStatusTextByType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 550
    :pswitch_0
    sget p1, Lcom/android/systemui/R$string;->upcoming_birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 554
    :pswitch_1
    sget p1, Lcom/android/systemui/R$string;->location_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 560
    :pswitch_2
    sget p1, Lcom/android/systemui/R$string;->game_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :pswitch_3
    sget p1, Lcom/android/systemui/R$string;->video_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 556
    :pswitch_4
    sget p1, Lcom/android/systemui/R$string;->new_story_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_5
    sget p1, Lcom/android/systemui/R$string;->anniversary_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 548
    :pswitch_6
    sget p1, Lcom/android/systemui/R$string;->birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTile(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)Landroid/app/people/PeopleSpaceTile;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "PeopleSpaceUtils"

    if-nez p0, :cond_0

    const-string p0, "ConversationChannel is null"

    .line 755
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 759
    :cond_0
    new-instance v2, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {v2, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    .line 760
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "PeopleSpaceTile is not valid"

    .line 761
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static getTiles(Landroid/content/Context;Landroid/app/INotificationManager;Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/INotificationManager;",
            "Landroid/app/people/IPeopleManager;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "people_space_conversation_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 160
    :goto_0
    invoke-interface {p1, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda18;

    .line 165
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;

    .line 167
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 168
    invoke-static {p2, p3, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p1

    if-nez v0, :cond_1

    const-string v0, "PeopleSpaceUtils"

    const-string v1, "Add recent conversations"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda19;

    .line 175
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda7;

    .line 177
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 180
    invoke-interface {p2}, Landroid/app/people/IPeopleManager;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;

    .line 183
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 185
    invoke-static {p0, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 188
    invoke-static {p2, p3, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    .line 189
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_1
    invoke-static {p1, p4}, Lcom/android/systemui/people/PeopleSpaceUtils;->augmentTilesFromVisibleNotifications(Ljava/util/List;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUserHandle(Landroid/app/people/PeopleSpaceTile;)Landroid/os/UserHandle;
    .locals 0

    .line 1044
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/app/people/PeopleSpaceTile;)I
    .locals 0

    .line 1039
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserHandle(Landroid/app/people/PeopleSpaceTile;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method private static getViewForTile(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;
    .locals 4

    .line 465
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceUtils"

    if-eqz v0, :cond_0

    const-string v0, "Create notification view"

    .line 466
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->createNotificationRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Landroid/app/people/ConversationStatus;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda15;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 473
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 474
    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Ljava/util/List;)Landroid/app/people/ConversationStatus;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string p1, "Create birthday view"

    .line 476
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {p0, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->createStatusRemoteViews(Landroid/content/Context;Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 480
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create status view for: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/people/ConversationStatus;

    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/people/ConversationStatus;

    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->createStatusRemoteViews(Landroid/content/Context;Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 488
    :cond_3
    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->createLastInteractionRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static hasBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Landroid/content/Context;)Z
    .locals 1

    .line 876
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->birthday_status:I

    .line 877
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 876
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

.method private static isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z
    .locals 3

    .line 513
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 521
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic lambda$augmentTilesFromVisibleNotifications$6(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$augmentTilesFromVisibleNotifications$7(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$augmentTilesFromVisibleNotifications$8(Ljava/util/Map;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 0

    .line 377
    invoke-static {p1, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->augmentTileFromVisibleNotifications(Landroid/app/people/PeopleSpaceTile;Ljava/util/Map;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBirthdayStatus$10(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 495
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getBirthdaysOnBackgroundThread$17(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 0

    .line 885
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getBirthdays(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method private static synthetic lambda$getSortedTiles$13(Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutInfo;)Landroid/app/people/PeopleSpaceTile;
    .locals 1

    .line 743
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSortedTiles$14(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    .line 744
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSortedTiles$15(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;
    .locals 1

    .line 745
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 746
    invoke-static {p0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getLastInteraction(Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleSpaceTile;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 745
    invoke-virtual {v0, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSortedTiles$16(Landroid/app/people/PeopleSpaceTile;Landroid/app/people/PeopleSpaceTile;)I
    .locals 3

    .line 747
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance p1, Ljava/lang/Long;

    .line 748
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 747
    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getTiles$0(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getTiles$1(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 167
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTiles$2(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getTiles$3(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTiles$4(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewForTile$9(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 473
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$migrateExistingUsersToNewStorage$5(Ljava/lang/String;Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    .line 281
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setCommonRemoteViewsFields$11(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 571
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getAvailability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setCommonRemoteViewsFields$12(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 579
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static migrateExistingUsersToNewStorage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "PeopleSpaceUtils"

    :try_start_0
    const-string v1, "notification"

    .line 275
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "people"

    .line 277
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 276
    invoke-static {v2}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v2

    const-class v3, Landroid/content/pm/LauncherApps;

    .line 278
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    const-class v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 279
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 274
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->getTiles(Landroid/content/Context;Landroid/app/INotificationManager;Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object v1

    .line 280
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 281
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate storage for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->setStorageForTile(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V

    goto :goto_0

    :cond_0
    const-string p0, "Could not migrate user"

    .line 286
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not query conversations"

    .line 289
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static removeBirthdayStatusIfPresent(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V
    .locals 2

    .line 916
    invoke-static {p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->hasBirthdayStatus(Landroid/app/people/PeopleSpaceTile;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'s birthday"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p2, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 921
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p2

    .line 918
    invoke-static {p0, p1, p3, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateAppWidgetOptionsAndView(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;ILandroid/app/people/PeopleSpaceTile;)V

    :cond_0
    return-void
.end method

.method public static removeStorageForTile(Landroid/content/Context;I)V
    .locals 8

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "package_name"

    const/4 v2, 0x0

    .line 323
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shortcut_id"

    .line 324
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "user_id"

    const/4 v6, -0x1

    .line 325
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 328
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 329
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 330
    invoke-static {v2, v3, v6}, Lcom/android/systemui/people/PeopleSpaceUtils;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 331
    new-instance v3, Ljava/util/HashSet;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 332
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 339
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {p0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setCommonRemoteViewsFields(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/people/PeopleSpaceTile;)Landroid/widget/RemoteViews;
    .locals 5

    .line 570
    :try_start_0
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda14;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 573
    sget v0, Lcom/android/systemui/R$id;->availability:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 575
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->availability:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 578
    :goto_1
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda13;

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 581
    sget v0, Lcom/android/systemui/R$id;->person_icon_with_story:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 582
    sget v0, Lcom/android/systemui/R$id;->person_icon_only:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 583
    sget v0, Lcom/android/systemui/R$id;->person_icon_inside_ring:I

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_3

    .line 585
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->person_icon_with_story:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 586
    sget v0, Lcom/android/systemui/R$id;->person_icon_only:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 587
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 590
    :goto_3
    sget v0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 591
    sget v0, Lcom/android/systemui/R$id;->person_icon:I

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 592
    sget v0, Lcom/android/systemui/R$id;->content_background:I

    const-string v2, "setClipToOutline"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 594
    sget v0, Lcom/android/systemui/R$id;->package_icon:I

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 598
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 597
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 596
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 594
    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set common fields: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PeopleSpaceUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static setLaunchIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/people/PeopleSpaceTile;I)Landroid/widget/RemoteViews;
    .locals 3

    .line 611
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x50808000

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_tile_id"

    .line 617
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 619
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_uid"

    .line 620
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getUid()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    sget p2, Lcom/android/systemui/R$id;->item:I

    const/high16 v1, 0xa000000

    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 628
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to add launch intents: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PeopleSpaceUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static setPunctuationRemoteViewsFields(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 7

    .line 669
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getBackgroundTextFromMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 674
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->punctuation1:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 675
    sget v2, Lcom/android/systemui/R$id;->punctuation2:I

    invoke-virtual {p0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 676
    sget v3, Lcom/android/systemui/R$id;->punctuation3:I

    invoke-virtual {p0, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 677
    sget v4, Lcom/android/systemui/R$id;->punctuation4:I

    invoke-virtual {p0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 678
    sget v5, Lcom/android/systemui/R$id;->punctuation5:I

    invoke-virtual {p0, v5, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 679
    sget v6, Lcom/android/systemui/R$id;->punctuation6:I

    invoke-virtual {p0, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 681
    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 682
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 683
    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 684
    invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 685
    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 686
    invoke-virtual {p0, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public static setStorageForTile(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V
    .locals 5

    .line 296
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserId(Landroid/app/people/PeopleSpaceTile;)I

    move-result v1

    const-string/jumbo v2, "user_id"

    .line 302
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 306
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v3, Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 310
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateAppWidgetOptionsAndView(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;ILandroid/app/people/PeopleSpaceTile;)V

    return-void
.end method

.method public static shouldKeepConversation(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 872
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

.method private static updateAppWidgetOptions(Landroid/appwidget/AppWidgetManager;ILandroid/app/people/PeopleSpaceTile;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "PeopleSpaceUtils"

    const-string p1, "Requested to store null tile"

    .line 444
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "options_people_space_tile"

    .line 448
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 449
    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method

.method private static updateAppWidgetOptionsAndView(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;ILandroid/app/people/PeopleSpaceTile;)V
    .locals 0

    .line 962
    invoke-static {p0, p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateAppWidgetOptions(Landroid/appwidget/AppWidgetManager;ILandroid/app/people/PeopleSpaceTile;)V

    .line 963
    invoke-static {p1, p3, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 964
    invoke-virtual {p0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static updateSingleConversationWidgets(Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;)V
    .locals 8

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 204
    invoke-static {p3, p2, p0, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getPeopleSpaceTile(Landroid/app/people/IPeopleManager;Landroid/appwidget/AppWidgetManager;Landroid/content/Context;I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v4

    const-string v5, "PeopleSpaceUtils"

    if-nez v4, :cond_0

    const-string v3, "Matching conversation not found for shortcut ID"

    .line 207
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widget: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {p0, v4, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 216
    invoke-virtual {p2, v3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {p0, p2, v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getBirthdaysOnBackgroundThread(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method private static updateTileWithBirthday(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/List;Landroid/app/people/PeopleSpaceTile;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/people/PeopleSpaceTile;",
            "I)V"
        }
    .end annotation

    const-string v0, "PeopleSpaceUtils"

    const/4 v1, 0x0

    .line 934
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

    :cond_0
    if-eqz v1, :cond_1

    .line 936
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "lookup"

    .line 938
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 937
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'s birthday today!"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p3}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$string;->birthday_status:I

    .line 944
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 945
    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p2

    .line 942
    invoke-static {p1, p0, p4, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateAppWidgetOptionsAndView(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;ILandroid/app/people/PeopleSpaceTile;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 950
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 956
    :cond_2
    :goto_1
    invoke-static {p1, p0, p3, p4}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeBirthdayStatusIfPresent(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)V

    return-void

    :goto_2
    if-eqz v1, :cond_3

    .line 953
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_3
    throw p0
.end method

.method public static updateWidgetWithNotificationChanged(Landroid/app/people/IPeopleManager;Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;Landroid/appwidget/AppWidgetManager;I)V
    .locals 2

    .line 403
    invoke-static {p0, p4, p1, p5}, Lcom/android/systemui/people/PeopleSpaceUtils;->getPeopleSpaceTile(Landroid/app/people/IPeopleManager;Landroid/appwidget/AppWidgetManager;Landroid/content/Context;I)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    const-string v0, "PeopleSpaceUtils"

    if-nez p0, :cond_0

    const-string p0, "Could not find stored tile to add notification to"

    .line 406
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_0
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    if-ne p3, v1, :cond_1

    .line 410
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding notification to storage, appWidgetId: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {p0, p2}, Lcom/android/systemui/people/PeopleSpaceUtils;->augmentTileFromNotification(Landroid/app/people/PeopleSpaceTile;Landroid/service/notification/StatusBarNotification;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    goto :goto_0

    .line 414
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Removing notification from storage, appWidgetId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    const/4 p2, 0x0

    .line 418
    invoke-virtual {p0, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 419
    invoke-virtual {p0, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 420
    invoke-virtual {p0, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    .line 423
    :goto_0
    invoke-static {p4, p1, p5, p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->updateAppWidgetOptionsAndView(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;ILandroid/app/people/PeopleSpaceTile;)V

    return-void
.end method
