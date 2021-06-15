.class public final Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;
.super Ljava/lang/Object;
.source "OneHandedSettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/ContentResolver;I)V
    .locals 0

    const-string p2, "OneHandedSettingsUtil"

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  isOneHandedModeEnable="

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  oneHandedTimeOut="

    .line 164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  tapsAppToExit="

    .line 166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  shortcutActivated="

    .line 168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "one_handed_mode_activated"

    const/4 v0, 0x0

    .line 144
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "one_handed_mode_enabled"

    const/4 v0, 0x0

    .line 103
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I
    .locals 1

    const-string p0, "one_handed_mode_timeout"

    const/16 v0, 0x8

    .line 125
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "swipe_bottom_to_notification_enabled"

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "taps_app_to_exit"

    const/4 v0, 0x0

    .line 113
    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;
    .locals 0

    .line 77
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p2, p0, p1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-object p0
.end method

.method public setOneHandedModeActivated(Landroid/content/ContentResolver;II)Z
    .locals 0

    const-string p0, "one_handed_mode_activated"

    .line 154
    invoke-static {p1, p0, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
