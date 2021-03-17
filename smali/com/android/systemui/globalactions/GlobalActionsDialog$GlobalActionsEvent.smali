.class public final enum Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
.super Ljava/lang/Enum;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalActionsEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 267
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v1, "GA_POWER_MENU_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0x151

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 270
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v3, "GA_POWER_MENU_CLOSE"

    const/4 v4, 0x1

    const/16 v5, 0x1d7

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 273
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v5, "GA_BUGREPORT_PRESS"

    const/4 v6, 0x2

    const/16 v7, 0x158

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 276
    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v7, "GA_BUGREPORT_LONG_PRESS"

    const/4 v8, 0x3

    const/16 v9, 0x159

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 279
    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v9, "GA_EMERGENCY_DIALER_PRESS"

    const/4 v10, 0x4

    const/16 v11, 0x15a

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 282
    new-instance v9, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v11, "GA_SCREENSHOT_PRESS"

    const/4 v12, 0x5

    const/16 v13, 0x15b

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    .line 285
    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const-string v13, "GA_SCREENSHOT_LONG_PRESS"

    const/4 v14, 0x6

    const/16 v15, 0x15c

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 265
    sput-object v13, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 291
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
    .locals 1

    .line 265
    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
    .locals 1

    .line 265
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 296
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->mId:I

    return p0
.end method
