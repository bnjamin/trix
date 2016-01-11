trix.testGroup "Trix.Document", ->
  createDocumentWithAttachment = (attachment) ->
    text = Trix.Text.textForAttachmentWithAttributes(attachment)
    new Trix.Document [new Trix.Block text]

  trix.test "documents with different attachments are not equal", ->
    a = createDocumentWithAttachment(new Trix.Attachment url: "a")
    b = createDocumentWithAttachment(new Trix.Attachment url: "b")
    ok not a.isEqualTo(b)
