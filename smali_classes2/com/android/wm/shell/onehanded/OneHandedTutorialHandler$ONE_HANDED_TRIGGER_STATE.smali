.class final enum Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
.super Ljava/lang/Enum;
.source "OneHandedTutorialHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ONE_HANDED_TRIGGER_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

.field public static final enum ENTERING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

.field public static final enum EXITING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

.field public static final enum UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    const-string v3, "ENTERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->ENTERING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    const-string v5, "EXITING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->EXITING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 63
    sput-object v5, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 1

    .line 63
    const-class v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    invoke-virtual {v0}, [Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object v0
.end method
