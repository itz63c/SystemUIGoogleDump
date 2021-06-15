.class public final enum Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
.super Ljava/lang/Enum;
.source "OneHandedUiEventLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneHandedSettingsTogglesEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum INVALID:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 126
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->INVALID:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 127
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v3, "ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON"

    const/4 v4, 0x1

    const/16 v5, 0x164

    invoke-direct {v1, v3, v4, v5}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 130
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v5, "ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF"

    const/4 v6, 0x2

    const/16 v7, 0x165

    invoke-direct {v3, v5, v6, v7}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 133
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v7, "ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON"

    const/4 v8, 0x3

    const/16 v9, 0x166

    invoke-direct {v5, v7, v8, v9}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 136
    new-instance v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v9, "ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF"

    const/4 v10, 0x4

    const/16 v11, 0x167

    invoke-direct {v7, v9, v10, v11}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 139
    new-instance v9, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v11, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON"

    const/4 v12, 0x5

    const/16 v13, 0x168

    invoke-direct {v9, v11, v12, v13}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 142
    new-instance v11, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v13, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF"

    const/4 v14, 0x6

    const/16 v15, 0x169

    invoke-direct {v11, v13, v14, v15}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 145
    new-instance v13, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER"

    const/4 v14, 0x7

    const/16 v12, 0x16a

    invoke-direct {v13, v15, v14, v12}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 148
    new-instance v12, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4"

    const/16 v14, 0x8

    const/16 v10, 0x16b

    invoke-direct {v12, v15, v14, v10}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 151
    new-instance v10, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8"

    const/16 v14, 0x9

    const/16 v8, 0x16c

    invoke-direct {v10, v15, v14, v8}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 154
    new-instance v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12"

    const/16 v14, 0xa

    const/16 v6, 0x16d

    invoke-direct {v8, v15, v14, v6}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    .line 124
    sput-object v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
    .locals 1

    .line 124
    const-class v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
    .locals 1

    .line 124
    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    invoke-virtual {v0}, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->mId:I

    return p0
.end method
