.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$clVU-d4yJ1flSBmcXt7XLncbo8w(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method
