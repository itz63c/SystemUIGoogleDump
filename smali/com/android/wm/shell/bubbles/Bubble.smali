.class public Lcom/android/wm/shell/bubbles/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleBitmap:Landroid/graphics/Bitmap;

.field private mChannelId:Ljava/lang/String;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mDotColor:I

.field private mDotPath:Landroid/graphics/Path;

.field private mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field private mFlags:I

.field private mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field private final mGroupKey:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field private mInflateSynchronously:Z

.field private mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

.field private mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private mIntent:Landroid/app/PendingIntent;

.field private mIntentActive:Z

.field private mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

.field private mIsBubble:Z

.field private mIsClearable:Z

.field private mIsImportantConversation:Z

.field private mIsVisuallyInterruptive:Z

.field private final mKey:Ljava/lang/String;

.field private mLastAccessed:J

.field private mLastUpdated:J

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mMetadataShortcutId:Ljava/lang/String;

.field private mNotificationId:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentCanceled:Z

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mShouldSuppressNotificationDot:Z

.field private mShouldSuppressNotificationList:Z

.field private mShouldSuppressPeek:Z

.field private mShowBubbleUpdateDot:Z

.field private mSuppressFlyout:Z

.field private mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

.field private mTitle:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$0BfpUXarUjh57KtnVfWI7dGq280(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->lambda$new$0(Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHL0iiGEXEequgt_Z4CtS94MilE(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubble;->lambda$new$1(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 188
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

    .line 191
    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/wm/shell/bubbles/Bubble-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    .line 199
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 170
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 172
    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 173
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 174
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 175
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 176
    iput p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 177
    iput p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 178
    iput-object p5, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 179
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 180
    iput-object p6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static extractFlyoutMessage(Lcom/android/wm/shell/bubbles/BubbleEntry;)Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;
    .locals 4

    .line 789
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 791
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 793
    new-instance v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    invoke-direct {v1}, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;-><init>()V

    .line 794
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.isGroupConversation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    .line 797
    :try_start_0
    const-class v2, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.text"

    if-eqz v2, :cond_1

    .line 800
    :try_start_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.bigText"

    .line 801
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 802
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v1

    .line 806
    :cond_1
    const-class v2, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 807
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.messages"

    .line 809
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    .line 808
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p0

    .line 813
    invoke-static {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 815
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 816
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 817
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 818
    iput-object v0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    .line 819
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_3
    iput-object v0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    return-object v1

    .line 822
    :cond_4
    const-class v2, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 823
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.textLines"

    .line 824
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 827
    array-length v0, p0

    if-lez v0, :cond_7

    .line 828
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    iput-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v1

    .line 831
    :cond_5
    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    .line 836
    :cond_6
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 837
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 843
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_7
    return-object v1
.end method

.method private getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 1

    const/4 p0, 0x0

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    move p4, p0

    .line 691
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 693
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "Bubble"

    const-string p3, "Couldn\'t find desired height res id"

    .line 698
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    return p0
.end method

.method private static getTitle(Lcom/android/wm/shell/bubbles/BubbleEntry;)Ljava/lang/String;
    .locals 1

    .line 778
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 779
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 780
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getUid(Landroid/content/Context;)I
    .locals 2

    .line 672
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 676
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 677
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Bubble"

    const-string v0, "cannot find uid"

    .line 679
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isBubbleLoading()Z
    .locals 1

    .line 363
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    .line 196
    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;->onPendingIntentCanceled(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Landroid/app/PendingIntent;)V
    .locals 1

    .line 192
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {p3, v0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 195
    :cond_0
    new-instance p3, Lcom/android/wm/shell/bubbles/Bubble-$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/bubbles/Bubble-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldSuppressNotification()Z
    .locals 1

    const/4 v0, 0x2

    .line 705
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method cleanupExpandedView()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    return-void
.end method

.method cleanupViews()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void
.end method

.method public disable(I)V
    .locals 1

    .line 733
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "key: "

    .line 750
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  showInShade:   "

    .line 751
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showDot:       "

    .line 752
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showFlyout:    "

    .line 753
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  lastActivity:  "

    .line 754
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  desiredHeight: "

    .line 755
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getDesiredHeightString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  suppressNotif: "

    .line 756
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  autoExpand:    "

    .line 757
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 758
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    .line 759
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enable(I)V
    .locals 1

    .line 729
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 766
    :cond_0
    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 767
    :cond_1
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 768
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppUid()I
    .locals 0

    .line 668
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    return p0
.end method

.method public getBubbleIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getBubbleIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method getDeleteIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method getDesiredHeight(Landroid/content/Context;)F
    .locals 3

    .line 626
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 629
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 628
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/wm/shell/bubbles/Bubble;->getDimenForPackageUser(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 631
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method getDesiredHeightString()Ljava/lang/String;
    .locals 2

    .line 636
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 638
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 640
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDotColor()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    return p0
.end method

.method public getDotPath()Landroid/graphics/Path;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method getFlyoutMessage()Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    return-object p0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method getIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bridge synthetic getIconView()Landroid/view/View;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method public getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-object p0
.end method

.method public getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method getLastActivity()J
    .locals 4

    .line 490
    iget-wide v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    iget-wide v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMetadataShortcutId()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationId()I
    .locals 0

    .line 515
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method getPendingIntentCanceled()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPendingIntentCanceled:Z

    return p0
.end method

.method getRawDesiredHeight()I
    .locals 0

    .line 618
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    return p0
.end method

.method getRawDesiredHeightResId()I
    .locals 0

    .line 622
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    return p0
.end method

.method getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->getUid(Landroid/content/Context;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p1, "app_uid"

    .line 659
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 p0, 0x8000000

    .line 661
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 662
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x20000000

    .line 663
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method hasMetadataShortcutId()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 773
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Z)V
    .locals 11

    move-object v9, p0

    .line 344
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/Bubble;->isBubbleLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, v9, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 347
    :cond_0
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iget-object v8, v9, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;ZLcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v10, v9, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 355
    iget-boolean v0, v9, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Void;

    .line 356
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->onPostExecute(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Void;

    .line 358
    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public isBubble()Z
    .locals 0

    .line 725
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 737
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isImportantConversation()Z
    .locals 0

    .line 553
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    return p0
.end method

.method isInflated()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isIntentActive()Z
    .locals 0

    .line 502
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    return p0
.end method

.method isVisuallyInterruptive()Z
    .locals 0

    .line 483
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsVisuallyInterruptive:Z

    return p0
.end method

.method markAsAccessedAt(J)V
    .locals 0

    .line 530
    iput-wide p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    const/4 p1, 0x1

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    return-void
.end method

.method setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2

    .line 428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    .line 430
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    .line 431
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 433
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getTitle(Lcom/android/wm/shell/bubbles/BubbleEntry;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    .line 436
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    .line 437
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 438
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/Bubble;->extractFlyoutMessage(Lcom/android/wm/shell/bubbles/BubbleEntry;)Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 439
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 441
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->visuallyInterruptive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsVisuallyInterruptive:Z

    .line 442
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 449
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 450
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 451
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 452
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 454
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 455
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 456
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 458
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 460
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 468
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 471
    :cond_5
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isClearable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsClearable:Z

    .line 472
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->shouldSuppressNotificationDot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    .line 473
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->shouldSuppressNotificationList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    .line 474
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->shouldSuppressPeek()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    return-void
.end method

.method public setExpandedContentAlpha(F)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 405
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setTaskViewAlpha(F)V

    :cond_0
    return-void
.end method

.method setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 317
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    return-void
.end method

.method setIntentActive()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    return-void
.end method

.method public setIsBubble(Z)V
    .locals 0

    .line 721
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    return-void
.end method

.method setPendingIntentCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPendingIntentCanceled:Z

    return-void
.end method

.method setShouldAutoExpand(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->enable(I)V

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->disable(I)V

    :goto_0
    return-void
.end method

.method setShowDot(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    .line 579
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_0
    return-void
.end method

.method setSuppressFlyout(Z)V
    .locals 0

    .line 610
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    return-void
.end method

.method public setSuppressNotification(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 563
    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    goto :goto_0

    .line 565
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 568
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

    if-eqz p1, :cond_1

    .line 569
    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;->onBubbleNotificationSuppressionChange(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method public setTaskViewVisibility(Z)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method setViewInfo(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 380
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 383
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 384
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 385
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 387
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    .line 390
    iget v0, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    .line 391
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    .line 393
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p1, :cond_1

    .line 394
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->update(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_2
    return-void
.end method

.method setVisuallyInterruptiveForTest(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 326
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsVisuallyInterruptive:Z

    return-void
.end method

.method public shouldAutoExpand()Z
    .locals 1

    const/4 v0, 0x1

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public showDot()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showFlyout()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 599
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    if-nez v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showInShade()Z
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/Bubble;->shouldSuppressNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsClearable:Z

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

.method stopInflation()V
    .locals 1

    .line 371
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 374
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bubble{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
