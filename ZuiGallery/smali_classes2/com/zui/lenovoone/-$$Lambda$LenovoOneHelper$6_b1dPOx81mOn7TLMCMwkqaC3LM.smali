.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;

    invoke-direct {v0}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$doSend$0(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
