.class public Lcom/zui/gallery/filtershow/tools/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/tools/GDepth$XMPStream;,
        Lcom/zui/gallery/filtershow/tools/GDepth$Parser;
    }
.end annotation


# static fields
.field private static final GDEPTH:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field private static final GIMAGE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field private static final GOTP:Ljava/lang/String; = "http://ns.google.com/photos/1.0/otp/"

.field private static final SIGNATURE_EXT:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"

.field private static final SIGNATURE_STD:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final TAG:Ljava/lang/String; = "GDepth"

.field private static final XMPNOTE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
