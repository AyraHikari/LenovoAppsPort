.class Lrx_activity_result2/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private onPreResult:Lrx_activity_result2/OnPreResult;

.field private onResult:Lrx_activity_result2/OnResult;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrx_activity_result2/Request;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public intent()Landroid/content/Intent;
    .locals 1

    .line 48
    iget-object v0, p0, Lrx_activity_result2/Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method onPreResult()Lrx_activity_result2/OnPreResult;
    .locals 1

    .line 36
    iget-object v0, p0, Lrx_activity_result2/Request;->onPreResult:Lrx_activity_result2/OnPreResult;

    return-object v0
.end method

.method public onResult()Lrx_activity_result2/OnResult;
    .locals 1

    .line 44
    iget-object v0, p0, Lrx_activity_result2/Request;->onResult:Lrx_activity_result2/OnResult;

    return-object v0
.end method

.method setOnPreResult(Lrx_activity_result2/OnPreResult;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lrx_activity_result2/Request;->onPreResult:Lrx_activity_result2/OnPreResult;

    return-void
.end method

.method public setOnResult(Lrx_activity_result2/OnResult;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lrx_activity_result2/Request;->onResult:Lrx_activity_result2/OnResult;

    return-void
.end method
