.class public final enum Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;
.super Ljava/lang/Enum;
.source "TapRT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/TapRT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TapClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Back:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Bottom:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Front:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Left:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Others:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Right:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

.field public static final enum Top:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 358
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v1, "Front"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Front:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 359
    new-instance v1, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v3, "Back"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Back:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 360
    new-instance v3, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v5, "Left"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Left:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 361
    new-instance v5, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v7, "Right"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Right:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 362
    new-instance v7, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v9, "Top"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Top:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 363
    new-instance v9, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v11, "Bottom"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Bottom:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    .line 364
    new-instance v11, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const-string v13, "Others"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Others:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 357
    sput-object v13, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->$VALUES:[Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;
    .locals 1

    .line 357
    const-class v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;
    .locals 1

    .line 357
    sget-object v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->$VALUES:[Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v0}, [Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    return-object v0
.end method